<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\SliderFooter;
use App\Models\WhoWeAreDetail;
use App\Models\WhoWeAreSide;
use App\Models\WhoWeAreFaq;
use App\Models\ServiceDetail;
use App\Models\ServiceItem;
use App\Models\ProjectDetail;
use App\Models\ProjectItem;
use App\Models\CourseItem;
use App\Models\Partener;
use App\Models\User;
use App\Models\Message;
use Illuminate\Support\Facades\DB;
use App\Notifications\MessageAdded;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Notification;
use App\Models\Notification as NotificationModel;

class SiteController extends Controller
{
    public function index()
    {
        $sliders        = Slider::latest()->get();
        $sliderFooters  = SliderFooter::latest()->get()->take(3);
        
        $whoWeAreDetail = WhoWeAreDetail::first();
        $whoWeAreFaqs   = WhoWeAreFaq::latest()->get();
        $whoWeAreSides  = WhoWeAreSide::latest()->get()->take(4);
        
        $serviceDetail  = ServiceDetail::first();
        $serviceItems   = ServiceItem::latest()->get()->take(3);
        
        $projectDetail  = ProjectDetail::first();
        $projectItems   = ProjectItem::latest()->get()->take(3);

        $parteners      = Partener::latest()->get();
        
        return view('site.pages.index', compact(['sliders','sliderFooters','whoWeAreDetail','whoWeAreSides','whoWeAreFaqs','serviceDetail','serviceItems','projectDetail','projectItems','parteners']));
    }



    public function projects()
    {
        $projectItems = ProjectItem::latest()->get();
        return view('site.pages.projects', compact('projectItems'));
    }



    public function projectItem($name)
    {
        $projectItem = ProjectItem::where('name_ar', $name)->orWhere('name_en', $name)->first();
        return view('site.pages.project-item', compact('projectItem'));
    }



    public function courses()
    {
        $courseItems = CourseItem::latest()->get();
        return view('site.pages.courses', compact('courseItems'));
    }



    public function contactUs()
    {
        return view('site.pages.contact-us');
    }


    
    public function sendMessage(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'name'    => 'required|string',
                'phone'   => 'required|numeric',
                'email'   => 'required|email',
                'message' => 'required|string',
            ]);
    
            if ($validator->fails()) {
                return response()->json([
                    'status'   => false,
                    'messages' => $validator->messages(),
                ]);
            }
            // Insert data
            $message = Message::create([
                'name'    => $request->name,
                'phone'   => $request->phone,
                'email'   => $request->email,
                'message' => $request->message,
            ]);
            if (!$message) {
                return response()->json([
                    'status' => false,
                    'messages' => ['error' => 'Failed to save message.']
                ]);
            }
            // Send notification
            $users = User::select('id', 'name')->get();
            Notification::send($users, new MessageAdded($message->id));
            return response()->json([
                'status' => true,
                'message' => 'Message sent successfully!'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'messages' => ['error' => $e->getMessage()]
            ]);
        }
    }
    
}

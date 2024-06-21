<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CourseItem extends Model
{
    use HasFactory,SoftDeletes;

    protected $table = 'course_items';
    protected $guarded = [];

    //use accessors
    //this will return arabic data if app language is arabic and english data if not 
    public function getNameAttribute()
    {
        if(app()->getLocale() == 'ar') 
        {
            return $this->name_ar;
        }
        else 
        {
            return $this->name_en;
        }
    }



    public function getAuthorAttribute()
    {
        if(app()->getLocale() == 'ar') 
        {
            return $this->author_ar;
        }
        else 
        {
            return $this->author_en;
        }
    }
}

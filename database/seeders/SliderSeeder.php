<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class SliderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $slider = \App\Models\Slider::create([
            'name_ar'    => 'Coding System',
            'name_en'    => 'Coding System',
            'details_ar' => 'Medical Equipment Planning',
            'details_en' => 'Medical Equipment Planning',
            'photo'      => 'slider-1.jpg',
        ]);
        
        $slider = \App\Models\Slider::create([
            'name_ar'    => 'Coding System',
            'name_en'    => 'Coding System',
            'details_ar' => 'Medical Equipment Supply',
            'details_en' => 'Medical Equipment Supply',
            'photo'      => 'slider-1.jpg',
        ]);
    }
}

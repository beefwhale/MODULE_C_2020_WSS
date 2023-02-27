<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Booking;
use App\Models\Programmes;
use App\Models\Schedules;
use App\Models\User;
use GuzzleHttp\Psr7\UploadedFile;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory()->create([
            'name' => "test",
            'email' => "test@test.com",
            'password' => '123456', // password
            'username'=> "test",
            'first_name'=> "test",
            'last_name'=> 'test',
            'mobile'=> '87802862',
            'class_code'=> 'OI620s',
            'profile_picture'=> fake()->image(),
            'is_admin'=>false
        ]);
        User::factory(9)->create();
        Programmes::factory(10)->create();
        \App\Models\Schedules::factory()->create([
            'slot_taken'=> 1,
            'start_date_time'=>'2023-01-01',
            'end_date_time'=>'2024-01-01',
            'class_size'=>1,
            'slot_left'=>1,
            'venue'=>"The Moon",
            'remarks'=>"The Moon",
            'instructor'=>"Moon",
            'programme_id'=> 1
        ]);
        Schedules::factory(15)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}

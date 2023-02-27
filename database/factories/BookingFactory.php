<?php

namespace Database\Factories;

use App\Models\Programmes;
use App\Models\Schedules;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Booking>
 */
class BookingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $user = User::all()->random();
        $schedule =Schedules::all()->random()->id;
        return [
            'mobile'=>$user->mobile,
            'email'=>$user->email,
            'class_code'=>$user->class_code,
            'status'=>'CONFIRMED',
            'programme_schedule_id'=>$schedule
        ];
    }
}

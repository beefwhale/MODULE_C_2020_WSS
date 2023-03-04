<?php

namespace Database\Factories;

use App\Models\Programmes;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Schedules>
 */
class SchedulesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $programme = Programmes::all()->random()->id;
        return [
            'slot_taken'=> $this->faker->numberBetween(1, 10),
            'start_date_time'=>$this->faker->dateTime(),
            'end_date_time'=>$this->faker->dateTime(),
            'class_size'=>$this->faker->numberBetween(1,30),
            'slot_left'=>$this->faker->numberBetween(0, 15),
            'venue'=>$this->faker->streetName(),
            'remarks'=>$this->faker->text(),
            'instructor'=>$this->faker->name(),
            'programmes_id'=> $programme
        ];
    }
}

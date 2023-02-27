<?php

namespace Database\Factories;

use App\Models\Schedules;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Programmes>
 */
class ProgrammesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title'=>$this->faker->text(50),
            'synopsis'=>$this->faker->text(500),
            'uploaded_by'=>$this->faker->name(),
            'image_file'=>$this->faker->image()
        ];
    }
}

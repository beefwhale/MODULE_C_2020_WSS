<?php

namespace Database\Factories;

use GuzzleHttp\Psr7\UploadedFile;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => fake()->name(),
            'email' => fake()->unique()->safeEmail(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'username'=> $this->faker->userName,
            'first_name'=> $this->faker->firstName,
            'last_name'=> $this->faker->lastName,
            'mobile'=> $this->faker->phoneNumber,
            'class_code'=> $this->faker->text(7),
            'profile_picture'=> $this->faker->image(),
            'is_admin'=>false
        ];
    }
}

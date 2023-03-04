<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// User Authentication
Route::resource('/login',\App\Http\Controllers\LoginController::class)->only([
    'store'
]);
Route::resource('/logout',\App\Http\Controllers\LogoutController::class)->only([
    'index'
])->middleware('auth:api');
//Student
Route::resource('/student/register',\App\Http\Controllers\StudentController::class)->only([
    'store'
]);
Route::resource('/student/myprofile',\App\Http\Controllers\StudentController::class)->only([
    'index'
])->middleware('auth:api');
Route::resource('/student/update',\App\Http\Controllers\StudentController::class)->only([
    'update'
]);
//Programmes
Route::resource('/programmes',\App\Http\Controllers\ProgrammesController::class)->only([
    'index'
]);
Route::resource('/programmes/search',\App\Http\Controllers\SearchController::class)->only([
    'index'
]);
//Booking
Route::resource('/booking',\App\Http\Controllers\BookingController::class)->only([
    'store','index'
]);
Route::resource('/booking/cancel/{id}',\App\Http\Controllers\CancelBookingController::class)->only([
    'store'
]);
//Reports
Route::get('/reports/total_sign_up/{startDate}/{endDate}',[\App\Http\Controllers\ReportController::class,
    'getTotalSignups']);
Route::get('/reports/programmes_by_period/{startDate}/{endDate}',[\App\Http\Controllers\ReportController::class,
    'getProgrammesbyPeriod']);

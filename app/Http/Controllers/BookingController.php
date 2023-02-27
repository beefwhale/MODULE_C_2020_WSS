<?php

namespace App\Http\Controllers;

use App\Http\Resources\BookingResource;
use App\Models\Booking;
use App\Models\Programmes;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Http\Request;
use App\Models\Schedules;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Supposed to use authorization token for validation but im gonna use email hardcoded for now
        $bookings = Booking::where('email','test@test.com')->get();
        return response(BookingResource::collection($bookings),200);
//        return response(BookingResource::collection($bookings),200);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'mobile'=>'required',
            'email'=>'required',
            'class_code'=>'required',
            'programme_schedule_id'=>'required',
        ]);
        $schedule = Schedules::where('id',$validated['programme_schedule_id'])->first();
        if($schedule->exists()){
            if($schedule->slot_left > 0){
                $slot_left = $schedule->slot_left;
                $slot_taken = $schedule->slot_taken;
                $schedule->slot_left = $slot_left-1;
                $schedule->slot_taken = $slot_taken+1;
                $schedule->save();
                $validated['status'] = 'CONFIRMED';
                Booking::create($validated);
                return response()->json([
                    'message'=> 'Booking Success'
                ],200);
            }
            else{
                return response()->json([
                    'message'=> 'Oops. Someone is faster than you. The requested slot is fully booked! Please take other slots.'
                ],200);
            }
        }
        else{
            return response()->json([
                'message'=> 'hehe it broke',
            ],200);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}

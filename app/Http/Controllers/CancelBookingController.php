<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Models\Schedules;
use Illuminate\Http\Request;

class CancelBookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Integer $id
     * @return \Illuminate\Http\Response
     */
    public function store($id)
    {
        $booking = Booking::where('id', $id)->first();
        if ($booking->exists()){
            if($booking -> status == 'CANCELLED'){
                return response()->json([
                    'message'=>'The booking is already cancelled',
                ],400);
            }
            else{
                $schedule = Schedules::where('id',$booking->programme_schedule_id)->first();
                //$programme = Schedules::where('id',$schedule->programme_id)->first();
                $slot_left = $schedule-> slot_left;
                $slot_taken = $schedule-> slot_taken;
                $booking->update([
                    'status'=>'CANCELLED'
                ]);
                $schedule->update([
                    'slot_left' => $slot_left+1,
                    'slot_taken'=> $slot_taken-1
                ]);
                return response()->json([
                    'message'=>'Cancel Success',
                ],200);
            }
        }
        else{
            return response()->json([
                'message'=>'Booking doesnt Exist',
            ],400);
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

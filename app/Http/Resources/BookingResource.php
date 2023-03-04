<?php

namespace App\Http\Resources;

use App\Models\Booking;
use App\Models\Programmes;
use App\Models\Schedules;
use Illuminate\Http\Resources\Json\JsonResource;

class BookingResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $schedule = Schedules::where('id',$this->programme_schedule_id)->first();
        $programme = Programmes::where('id',$schedule->programmes_id)->first();
        return[
            'id'=>$this->id,
            'programme_title'=>$programme->title,
            'schedule_start_date_time'=>$schedule->start_date_time,
            'schedule_end_date_time'=>$schedule->end_date_time,
            'venue'=>$schedule->venue,
            'status'=>$this->status,
            'created_at'=>$this->created_at,
            'updated_at'=>$this->updated_at
        ];
    }
}

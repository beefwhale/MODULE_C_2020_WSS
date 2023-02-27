<?php

namespace App\Http\Resources;

use App\Models\Schedules;
use Illuminate\Http\Resources\Json\JsonResource;

class ProgrammesResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $schedulesAll = Schedules::all();
        $schedules=[];
        foreach($schedulesAll  as $s){
            if($s->programme_id == $this->id){
                $schedules[] = $s;
            }
        }
        $this->schedules = $schedules;
        $this->save();
        return [
            'id'=>$this->id,
            'title'=>$this->title,
            'synopsis'=>$this->synopsis,
            'uploaded_by'=>$this->uploaded_by,
            'image_file'=>$this->image_file,
            'created_at'=>$this->created_at,
            'updated_at'=>$this->updated_at,
            'schedules'=>$this->schedules,
        ];
    }
}

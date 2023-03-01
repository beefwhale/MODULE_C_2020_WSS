<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProgrammesResource;
use App\Models\Programmes;
use App\Models\Schedules;
use Illuminate\Http\Request;
use Ramsey\Uuid\Type\Integer;

class SearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $title = $request->input('title',null);
        $startInput = $request->input('start',null);
        $endInput = $request->input('end',null);

        //assigning schedules to programmes
        $schedulesAll = Schedules::all();
        $programmes = Programmes::all();
        // Filter based on search
        $validProgrammes = [];
        foreach($programmes as $p){
            $validSchedules = [];
            $schedules = $p['schedules'];
            if ($schedules != []){
                foreach ($schedules as $s){
                    if($s->start_date_time <= $startInput && $s-> end_date_time >= $endInput){
                        $validSchedules[] = $s;

                    }
                }

            }
            if($validSchedules != []){
                $p->schedules = $validSchedules;
                if($title != null){
                    if ($title == $p -> title){
                        $validProgrammes[] = $p;
                    }
                }
                else{
                    $validProgrammes[] = $p;
                }
            }
        }
        return response()->json([
            'data'=>$validProgrammes,
            'start'=>$startInput,
            'end'=>$endInput
        ],200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  Integer $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

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

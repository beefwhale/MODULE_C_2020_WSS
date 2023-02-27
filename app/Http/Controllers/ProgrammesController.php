<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProgrammesResource;
use App\Models\Programmes;
use App\Models\Schedules;
use Illuminate\Http\Request;

class ProgrammesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $programmes = Programmes::all();
        return response(ProgrammesResource::collection($programmes), 200);
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
     * @param  \App\Models\Programmes  $programmes
     * @return \Illuminate\Http\Response
     */
    public function show(Programmes $programmes)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Programmes  $programmes
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Programmes $programmes)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Programmes  $programmes
     * @return \Illuminate\Http\Response
     */
    public function destroy(Programmes $programmes)
    {
        //
    }
}

<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProgrammesResource;
use App\Models\Booking;
use App\Models\Programmes;
use App\Models\Schedules;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function getTotalSignups($startDate, $endDate){
        $SignupReports = [];
        $validProgrammes = [];
        $bookings = Booking::all();

        foreach($bookings as $b){
            if ($b -> status == 'CONFIRMED') {
                $validSchedule = Schedules::where('id', $b->programme_schedule_id)->first();
                if ($validSchedule->start_date_time <= $startDate && $validSchedule->end_date_time >= $endDate) {
                    $programme = Programmes::where('id', $validSchedule->programme_id)->first();
                    if (!in_array($programme, $validProgrammes)) {
                        $report = new \stdClass();
                        $report->programme_id = $programme->id;
                        $report->programme_title = $programme->title;
                        $report->programme_synopsis = $programme->synopsis;
                        $report->class_size = $validSchedule->class_size;
                        $report->total_signed_up = 0;
                        $SignupReports[] = $report;
                        $validProgrammes[] = $programme;
                    }
                }
            }
        }
        foreach ($bookings as $b){
            if ($b -> status == 'CONFIRMED'){
                $validSchedule = Schedules::where('id',$b->programme_schedule_id)->first();
                foreach ($SignupReports as $r){
                    if($r->programme_id == $validSchedule->programme_id) {
                        $r->total_signed_up = $r->total_signed_up + 1;
                    }
                }
            }
        }
        return response($SignupReports, 200);
    }
    public function getProgrammesbyPeriod($startDate, $endDate){
        $validProgrammes = [];
        $schedules = Schedules::all();

        foreach($schedules as $s){
            if ($s->start_date_time <= $startDate && $s->end_date_time >= $endDate) {
                $programme = Programmes::where('id', $s->programme_id)->first();
                $validProgramme = new \stdClass();
                $validProgramme->id = $programme->id;
                $validProgramme->title = $programme->title;
                $validProgramme->ynopsis = $programme->synopsis;
                $validProgramme->uploaded_by = $programme->uploaded_by;
                $validProgramme->start_date_time = $s->start_date_time;
                $validProgramme->end_date_time = $s->end_date_time;
                $validProgrammes[] = $validProgramme;
            }
        }

        return response($validProgrammes, 200);
    }
}

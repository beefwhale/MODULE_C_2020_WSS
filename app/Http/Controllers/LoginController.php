<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Http\Resources\LoginResource;
use Illuminate\Http\Request;
use mysql_xdevapi\Exception;

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::all();
        return response()->json([
            'success'=>true,
           'data'=> $user
        ]);
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
                   'username'=>'required','string',
                    'password'=>'required'
            ]);
        $user = User::where('username',$validated['username'])->first();
        if($user == null || $validated['password'] == null){
            return response()->json([
                'success'=> true,
                'data'=> LoginResource::collection($user)
            ],200);
        }
        else{
            if($user && ($validated['password'] == $user->password)){
                return response()->json([
                    'success'=> true,
                    'data'=> new LoginResource($user)
                ],200);
            }
            else{
                return response()->json([
                    'message'=>'Invalid Login'
                ],400);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}

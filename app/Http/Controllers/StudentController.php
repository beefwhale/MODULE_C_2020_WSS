<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Resources\MyProfileResource;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //check for authorization token this is a temp line
        $user = User::where('username','test')->first();
        return response()-> json([
            new MyProfileResource($user)
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
            'username'=>'required',
            'email'=>'required',
            'password'=>'required',
            'mobile'=>'required',
            'class_code'=>'required',
            'profile_picture'=>'required'
        ]);
        $email = User::where('email',$validated['email'])->exists();
        $username = User::where('username',$validated['username'])->exists();
        if(!$email){
            if(!$username){
                User::create($validated);
                return response()->json([
                    'message'=>"Registration Success",
                ],200);
            }
            else{
                return response()->json([
                    'message'=>"Username is already exists!",
                ],400);
            }
        }else{
            return response()->json([
                'message'=>"Email is already exists!",
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
        //check for authorization token this is a temp line
        $user = User::where('id',$id)->first();
        $email = User::where('email',$request->email)->exists();
        if(!$email){
            if($request->email){
                $user->email = $request->email;
            };
            if($request->mobile){
                $user->mobile = $request->mobile;
            };
            if($request->class_code){
                $user->class_code = $request->class_code;
            };
            if($request->profile_picture){
                $user->profile_picture=$request->profile_picture;
            };
            $user->save();
            return response()-> json([
                'message'=> "Update OK",
                'user'=> $user
            ],200);
        }
        else{
            return response()-> json([
                'message'=> "Email Already Exists!"
            ],400);
        }

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

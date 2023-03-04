<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Http\Resources\LoginResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use mysql_xdevapi\Exception;
use Illuminate\Support\Str;
use Nette\Schema\ValidationException;
use Validator;

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
        $validated = Validator::make($request->all(),[
            'username'=>'required',
            'password'=>'required'
        ]);
        if ($validated->fails()){
            return response()->json([
                'message'=>'Invalid Login'
            ],400);
        }
        if(Auth::attempt(['username'=>$request['username'],'password'=>$request['password']])){
            $user = auth()->user();
            $token = $user->createApiToken();
            return response()->json([
                'success'=> true,
                'data'=> [
                    'token'=> $token,
                    'user'=>new LoginResource($user)
                ]
            ],200);
        }
        else{
            return response()->json([
                'message'=>'Invalid Login'
            ],400);
        }
        /*$user = User::where('username',$request['username'])->first();
        if($user && Hash::check($request['password'],$user->password)){
            //Generate Token
            $token = $user->createApiToken();
            return response()->json([
                'success'=> true,
                'data'=> [
                    'token'=> $token,
                    'user'=>new LoginResource($user)
                ]
            ],200);
        }
        else{
            return response()->json([
                'message'=>'Invalid Login'
            ],400);
        }*/
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

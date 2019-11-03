<?php

namespace App\Http\Controllers;

use App\Message;
use App\User;
use Illuminate\Http\Request;
use App\Events\PrivateMessageSent;
class MessageController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function privateMessages(User $user)
    {
        $comunicacionPrivada= Message::with('user')
        ->where(['user_id'=> auth()->id(), 'receiver_id'=> $user->id])
        ->orWhere(function($query) use($user){
            $query->where(['user_id' => $user->id, 'receiver_id' => auth()->id()]);
        })
        ->get();
        return $comunicacionPrivada;
    }

    public function sendPrivateMessage(Request $request,User $user)
    {
        if(request()->has('file')){
            $filename = request('file')->store('chat');
            $message=Message::create([
                'user_id' => request()->user()->id,
                'image' => $filename,
                'receiver_id' => $user->id
            ]);
        }else{
            $input=$request->all();
            $input['receiver_id']=$user->id;
            $message=auth()->user()->messages()->create($input);
        }
        broadcast(new PrivateMessageSent($message->load('user')))->toOthers();
        
        return response(['status'=>'mensaje enviado','message'=>$message]);
    }
}

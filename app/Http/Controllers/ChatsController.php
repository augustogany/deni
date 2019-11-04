<?php

namespace App\Http\Controllers;
use App\User;
use App\Message;
use App\Events\MessageSent;
use App\Events\PrivateMessageSent;
use Illuminate\Http\Request;

class ChatsController extends Controller
{
    public function __construct(){
     $this->middleware('auth');
    }

    public function index(){
        return view('chats.publico');
    }

    public function private(){
        return view('chats.privado');
    }

    public function fetchMessages()
    {
        return Message::with('user')
                                  ->where('receiver_id',null)->get();
    }
    public function sendMessage(Request $request)
    {
        $message = auth()->user()->messages()->create([
            'message' => $request->message
        ]);
       broadcast(new MessageSent($message->load('user')))->toOthers();
        return ['status' => 'success'];
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
            $filename = $request->file('file')->store('chat','public');
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

<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Consultation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class ConsultationController extends Controller
{
    public function index()
    {
        return view('welcome');
    }
    public function consult(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'username' => 'required|string|min:3|max:199',
            'user_phone' => 'required|string|min:3|max:199',
            'user_email' => 'required|email|min:3|max:199',
            'visa'      => 'required',
            'country' => 'required'
        ]);
        if ($validator->fails()) {
            return response()->json([
                'error' => $validator->errors()->messages()
            ]);
        }

        $consult = new Consultation();
        $consult->username = $request->username;
        $consult->user_phone = $request->user_phone;
        $consult->user_email = $request->user_email;
        $consult->visa = $request->visa;
        $consult->country = $request->country;
        
         if ($consult->save()) {
            Mail::send('email.consultationEmail', 
            [
                'username'   => $request->username, 
                'user_phone' => $request->user_phone,
                'user_email' => $request->user_email,
                'visa'       => $request->visa,
                'country'       => $request->country
            ], function ($message) use ($request) {

                $message->to('support@airview-express.com');
                $message->subject("New consultation request");

            });
        }
        return response()->json([
            'success' => true
        ]);
    }
}

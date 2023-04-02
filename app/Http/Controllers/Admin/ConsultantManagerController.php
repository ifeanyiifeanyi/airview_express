<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Consultation;
use Illuminate\Http\Request;

class ConsultantManagerController extends Controller
{
    public function index()
    {
        $consultants = Consultation::latest()->get();
        return view('admin.consultantManager.index', ['consultants' => $consultants]);
    }

    public function destroy($id)
    {
        Consultation::findOrFail($id)->delete();
        $notification = [
            'message'   => 'Message Deleted!',
            'alert-type' => 'success'
        ];
        return redirect()->route('consult.admin.manager')->with($notification);
    }
}

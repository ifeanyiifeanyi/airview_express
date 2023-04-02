<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Visa;
use App\Models\VisaApplication;
use Illuminate\Support\Facades\DB;

class ManageVisaApplicationController extends Controller
{
    public function index()
    {
        $manageAppliedVisas  = Visa::join('visa_applications', 'visas.id', '=', 'visa_applications.visa_applied_id')
            ->join('prove_of_payments', 'prove_of_payments.user_id', '=', 'visa_applications.user_id')
            ->select('visas.*', 'visa_applications.created_at AS applied_date', 'visa_applications.*', 'prove_of_payments.*', 'prove_of_payments.created_at AS payment_date', 'visa_applications.id AS visa_applications_id')
            ->get();
        // dd($manageAppliedVisas);
        return view('admin.manageVisas.index', ['manageAppliedVisas' => $manageAppliedVisas]);
    }

    public function show($id)
    {
        $manageAppliedVisa  = Visa::join('visa_applications', 'visas.id', '=', 'visa_applications.visa_applied_id')
        ->join('prove_of_payments', 'prove_of_payments.user_id', '=', 'visa_applications.user_id')
        ->where('visa_applications.id' , $id)
        ->select('visas.*', 'visa_applications.created_at AS applied_date', 'visa_applications.*', 'prove_of_payments.*', 'prove_of_payments.created_at AS payment_date', 'visa_applications.id AS visa_applications_id')
        ->get();
    // dd($manageAppliedVisa);
    return view('admin.manageVisas.show', ['manageAppliedVisa' => $manageAppliedVisa]);
    }

    public function approve($id){
        $visa = VisaApplication::findOrFail($id);
        $visa->status = "Approved";
        $visa->save();
        $notification = [
            'message'   => 'Visa Application Approved!',
            'alert-type' => 'success'
        ];
        return redirect()->route('manage.visa.applications')->with($notification);

        
    }
    public function destroy($id)
    {
        VisaApplication::findOrFail($id)->delete();
        $notification = [
            'message'   => 'Visa Application Deleted!',
            'alert-type' => 'success'
        ];
        return redirect()->route('manage.visa.applications')->with($notification);
    }
}

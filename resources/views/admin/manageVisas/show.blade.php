@extends('admin.layouts.app')

@section('title', 'View Visa Application')
@section('css')

@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"> @yield('title') </h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">@yield('title')</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            @if(Session::has('message'))
            <p class="alert alert-success">{{ session('message') }}</p>
            @endif
            <div class="card-body">
            <a href="{{ route('approve.visa.applications', $manageAppliedVisa[0]->visa_applications_id) }}" class="btn btn-info btn-lg">Click to Approve Application</a>
            <table id="example1" class="table table-bordered table-striped">
                @foreach ($manageAppliedVisa as $value)
                    <tr>
                        <td>Visa Processing Status</td>
                        <td>
                            @if( $value->status == 'null')
                                <span class="btn btn-sm btn-warning">{{ 'Pending' }}</span>
                            @else
                                <span class="btn btn-sm btn-success">{{ 'Approved' }}</span> 
                            @endif
                        </td>
                    </tr>
                     <tr>
                        <td>Visa Prove of Payment</td>
                        <td>
                            @if( $value->prove_of_payment)
                                <a target="_blank" href="{{ url($value->prove_of_payment) }}" class="btn btn-sm btn-info">View</a>
                            @else
                                N/A
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>Payment Date</td>
                        <td>{{  ucwords($value->payment_date == NULL ? 'N/A' : $value->payment_date) }}</td>
                    </tr>
                    <tr>
                        <td>Payment (Transaction reference | code)</td>
                        <td>{{  ucwords($value->transaction_code == NULL ? 'N/A' : $value->transaction_code) }}</td>
                    </tr>
                    <tr>
                        <td>Visa</td>
                        <td>{{ ucwords($value->visa_name) }}</td>
                    </tr>
                    <tr>
                        <td>Visa</td>
                        <td>{{ ucwords($value->visa_name) }}</td>
                    </tr>
                    <tr>
                        <td>Processing Fee</td>
                        <td>${{ ucwords($value->amount) }}</td>
                    </tr>
                    <tr>
                        <td>Passport Number</td>
                        <td>{{ ucwords($value->passport_number) }}</td>
                    </tr>
                    <tr>
                        <td>Application ID</td>
                        <td>{{ ucwords($value->uuid) }}</td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td>{{ ucwords($value->user_name) }}</td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>{{ ucwords($value->gender) }}</td>
                    </tr>
                    <tr>
                        <td>Date of birth</td>
                        <td>{{ ucwords($value->dob) }}</td>
                    </tr>
                    <tr>
                        <td>Place of birth</td>
                        <td>{{ ucwords($value->pob) }}</td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                        <td>{{ ucwords($value->nationality) }}</td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>{{ ucwords($value->address) }}</td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>{{ ucwords($value->phone) }}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>{{ ucwords($value->email) }}</td>
                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>{{ ucwords($value->phone) }}</td>
                    </tr>
                    <tr>
                        <td>Purpose of Travel</td>
                        <td>{{ ucwords($value->purpose_of_travel == 'null' ? 'N/A' : $value->purpose_of_travel) }}</td>
                    </tr>
                    <tr>
                        <td>Travel Dates</td>
                        <td>{{ ucwords($value->travel_dates == NUll ? 'N/A' : $value->travel_dates) }}</td>
                    </tr>
                    <tr>
                        <td>Itinerary</td>
                        <td>{{ ucwords($value->itinerary == 'null' ? 'N/A' : $value->itinerary) }}</td>
                    </tr>
                    <tr>
                        <td>Occupaion</td>
                        <td>{{ ucwords($value->occupation == 'null' ? 'N/A' : $value->occupation) }}</td>
                    </tr>
                    <tr>
                        <td>Employer</td>
                        <td>{{ ucwords($value->employer == 'null' ? 'N/A' : $value->employer) }}</td>
                    </tr>
                    <tr>
                        <td>Salary</td>
                        <td>{{ ucwords($value->salary == 'null' ? 'N/A' : $value->salary) }}</td>
                    </tr>
                    <tr>
                        <td>Education</td>
                        <td>{{ ucwords($value->education == 'null' ? 'N/A' : $value->education) }}</td>
                    </tr>
                    <tr>
                        <td>Education Institution</td>
                        <td>{{ ucwords($value->education_institution == 'null' ? 'N/A' : $value->education_institution) }}</td>
                    </tr>
                    <tr>
                        <td>Family Member Name</td>
                        <td>{{ ucwords($value->family_name == 'null' ? 'N/A' : $value->family_name) }}</td>
                    </tr>
                    <tr>
                        <td>Family Member Relationship</td>
                        <td>{{ ucwords($value->family_relationship == 'null' ? 'N/A' : $value->family_relationship) }}</td>
                    </tr>
                    <tr>
                        <td>Family Member DOB</td>
                        <td>{{ ucwords($value->family_dob == 'null' ? 'N/A' : $value->family_dob) }}</td>
                    </tr>
                    <tr>
                        <td>Recent Prevoius Travel ?</td>
                        <td>{{ ucwords($value->previous_travel == 'null' ? 'N/A' : $value->previous_travel) }}</td>
                    </tr>
                    <tr>
                        <td>Health Information</td>
                        <td>
                            @if(isset($value->health_information))
                                <a target="_blank" href="{{ url($value->health_information) }}" class="btn btn-info">View</a>
                            @else
                                N/A
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>Any Criminal Records</td>
                        <td>{{ ucwords($value->criminal_record == 'null' ? 'N/A' : $value->criminal_record) }}</td>
                    </tr>
                    <tr>
                        <td>Financial Support</td>
                        <td>{{ ucwords($value->financial_support == NUll ? 'N/A' : $value->financial_support) }}</td>
                    </tr>
                    <tr>
                        <td>University Name</td>
                        <td>{{ ucwords($value->university_name == 'null' ? 'N/A' : $value->university_name) }}</td>
                    </tr>
                    <tr>
                        <td>Degree Name</td>
                        <td>{{ ucwords($value->degree_program == 'null' ? 'N/A' : $value->degree_program) }}</td>
                    </tr>
                    <tr>
                        <td>Degree Type</td>
                        <td>{{ ucwords($value->degree_type == Null ? 'N/A' : $value->degree_type) }}</td>
                    </tr>
                    <tr>
                        <td>Degree Duration</td>
                        <td>{{ ucwords($value->degree_duration == Null ? 'N/A' : $value->degree_duration) }}</td>
                    </tr>
                    <tr>
                        <td>Academic transcript</td>
                        <td>
                            @if($value->academic_transcript)
                                <a class="btn btn-info" href="{{ url($value->academic_transcript) }}">View</a>
                            @else
                                N/A
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>Acceptance Letter</td>
                        <td>
                            @if($value->acceptance_letter)
                                <a class="btn btn-info" href="{{ url($value->acceptance_letter) }}">View</a>
                            @else
                                N/A
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>Hoel Reservation</td>
                        <td>
                            @if($value->hoel_reservation)
                                <a class="btn btn-info" href="{{ url($value->hoel_reservation) }}">View</a>
                            @else
                                N/A
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>Destination (country)</td>
                        <td>{{ ucwords($value->destination_country == 'null' ? 'N/A' : $value->destination_country) }}</td>
                    </tr>
                    <tr>
                        <td>Duration of Stay</td>
                        <td>{{ ucwords($value->duration_of_stay == 'null' ? 'N/A' : $value->duration_of_stay) }}</td>
                    </tr>
                    <tr>
                        <td>Job Title (offer abroad)</td>
                        <td>{{ ucwords($value->job_title == 'null' ? 'N/A' : $value->job_title) }}</td>
                    </tr>
                    <tr>
                        <td>Company Name (Employer abroad)</td>
                        <td>{{ ucwords($value->employer_name == 'null' ? 'N/A' : $value->employer_name) }}</td>
                    </tr>
                    <tr>
                        <td>Company Address (Location abroad)</td>
                        <td>{{ ucwords($value->employer_address == 'null' ? 'N/A' : $value->employer_address) }}</td>
                    </tr>
                    <tr>
                        <td>Company Address (Location abroad)</td>
                        <td>{{ ucwords($value->employer_address == 'null' ? 'N/A' : $value->employer_address) }}</td>
                    </tr>
                    <tr>
                        <td>Employment Agreement</td>
                        <td>
                            @if($value->employment_contract)
                                <a class="btn btn-info" href="{{ url($value->employment_contract) }}">View</a>
                            @else
                                N/A
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <td>Employmen Duration </td>
                        <td>{{ ucwords($value->employment_duration == NULL ? 'N/A' : $value->employment_duration) }}</td>
                    </tr>
                @endforeach
            </table>
            </div>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection


@section('scripts')

<script>
    $(function() {
        $(document).on('click', '#delete', function(e) {
            e.preventDefault();
            var link = $(this).data("id");
            console.log({
                link
            });

            Swal.fire({
                title: 'Are you sure?'
                , text: "You won't be able to revert this!"
                , icon: 'warning'
                , showCancelButton: true
                , confirmButtonColor: '#3085d6'
                , cancelButtonColor: '#d33'
                , confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    if ($("#delete").submit()) {
                        Swal.fire(
                            'Deleted!'
                            , 'Value deleted.'
                            , 'success'
                        )
                    }
                }
            })
        })

    })

</script>
@endsection

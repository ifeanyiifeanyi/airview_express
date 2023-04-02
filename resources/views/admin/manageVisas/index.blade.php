@extends('admin.layouts.app')

@section('title', 'Manage Visa Application')
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
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>View Application Details </th>
                            <th>Visa Title </th>
                            <th>Username</th>
                            <th>Country</th>
                            <th>User Email</th>
                            <th>Passport Number</th>
                            <th>Application Date</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    @if($manageAppliedVisas->count())
                    @foreach($manageAppliedVisas as $key => $value)

                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td><a href="{{ route('show.visa.applications', $value->visa_applications_id) }}" class="btn btn-info btn-sm">View</a></td>
                        <td>{{ ucwords($value->visa_name) }}</td>
                        <td>{{ ucwords($value->user_name) }}</td>
                        <td>{{ ucwords($value->country) }}</td>
                        <td>{{ ucwords($value->user_email) }}</td>
                        <td>{{ ucwords($value->passport_number) }}</td>
                        <td>{{ \Carbon\Carbon::parse($value->applied_date)->diffForHumans()  }}</td>
                        <td>
                            <form id="delete" action="{{ route('delete.visa.applications', $value->visa_applications_id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="bg-transparent border-transparent"><i class="fas fa-trash fa-1x text-danger"></i></button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                    @else
                    <p>No available data</p>
                    @endif



                </table>

            </div>
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
</div>
@endsection


@section('scripts')
<script>
    document.querySelector('.all_ids').addEventListener('change', function() {
        var checkboxes = document.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach(function(checkbox) {
            checkbox.checked = this.checked;
        }, this);
    });

</script>
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

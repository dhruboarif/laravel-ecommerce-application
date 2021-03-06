@extends('admin.layouts.admin_template')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Users Management
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li class="active">Show User</li>
      </ol>
      <div class="pull-right">
        <a class="btn btn-success" href="{{ route('users.index') }}">Back</a>
      </div>
    </section>
  

    <!-- Main content -->
    <section class="content">
      <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="form-group">
                  <strong>Name:</strong>
                  {{ $user->name }}
              </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="form-group">
                  <strong>Email:</strong>
                  {{ $user->email }}
              </div>
          </div>
          <div class="col-xs-12 col-sm-12 col-md-12">
              <div class="form-group">
                  <strong>Roles:</strong>
                  @if(!empty($user->getRoleNames()))
                      @foreach($user->getRoleNames() as $v)
                          <label class="badge badge-success">{{ $v }}</label>
                      @endforeach
                  @endif
              </div>
          </div>
      </div>
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@endsection
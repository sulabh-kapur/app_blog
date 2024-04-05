@extends('layouts.default')
@section('content')
<div class="container">
  <h2>Category</h2>
        @if(session('success'))
        <div class="alert alert-success">
        {{session('success')}}
        </div>
        @endif

  <form action="{{url('/category/add')}}" method="post" enctype="multipart/form-data" >
  <input type = "hidden" name="_token" value="{{csrf_token()}}"/>
    <div class="form-group">
      <label for="name">Name</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name"/>
      @error('name')
    <div class="alert alert-danger">{{ $message }}</div>
     @enderror

    </div>
    <div class="form-group">
      <label for="image">Image</label>
      <input type="file" class="form-control" id="image"  name="image"/>
      @error('image')
    <div class="alert alert-danger">{{ $message }}</div>
     @enderror
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
@stop
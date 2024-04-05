@extends('layouts.default')
@section('content')
<div class="container">
  <h2>Post</h2>
        @if(session('success'))
        <div class="alert alert-success">
        {{session('success')}}
        </div>
        @endif

  <form action="{{ url('/post/add') }}" method="post" enctype="multipart/form-data" >
  <input type = "hidden" name="_token" value="{{csrf_token()}}"/>
    <div class="form-group">
      <label for="title">Title</label>
      <input type="text" class="form-control" id="title" placeholder="Enter Title" name="title"/>
      @error('title')
    <div class="alert alert-danger">{{ $message }}</div>
     @enderror
     <div class="form-group">
      <label for="description">Description</label>
      <input type="text" class="form-control" id="description" placeholder="Description" name="description"/>
      @error('description')
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

    <div class="form-group">
    <label for="usr"> Select Category:</label>
     <select class="form-control" name="category" id="sel1">
     <?php foreach($categories as $key => $value){?>
        <option value="<?php echo $value['id']; ?>"><?php echo $value['name']; ?></option>
        <?php } ?>
     </select>


    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
@stop
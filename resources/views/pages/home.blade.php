@extends('layouts.default')
@section('content')


<div class="container grid-container">
  <div class="row">

   <?php foreach ($post_list_1 as $key => $value) { ?>
    <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
        <img class="img img-responsive img-thumbnail" style="max-height:300px;min-height:300px" src="<?php echo asset("storage").'/images/'.$value->image ?>" alt="Card image cap"/>
        <div class="card-body">
          <h5 class="card-title"><?php echo $value['title']; ?></h5>
          <p class="card-text"><?php echo $value['description'];?></p>
          <a class="btn btn-primary btn-grid" href="/post/{{$value->id}}" >Read More</a>
        </div>
      </div>
    </div>
    <?php } ?>
  </div>
  
</div>
{{$post_list_1->links()}}
    @stop
   
    
    
    
    
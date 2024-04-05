@extends('layouts.preview_default')
@section('content')

<div class="container pb50">
    <div class="row">
        <div class="col-md-9 mb40">
            <article>
                <img src="<?php echo asset("storage").'/images/'.$post->image ?>" alt="" class="img-fluid mb30">
                <div class="post-content">
                    
                    <h3><?php echo $post->title ?></h3>
                    <ul class="post-meta list-inline">
                        <li class="list-inline-item">
                            <i class="fa fa-user-circle-o"></i> <a href="#"><?php echo ($post->user)?$post->user->name: ''?></a>
                        </li>
                        <li class="list-inline-item">
                            <i class="fa fa-calendar-o"></i> <a href="#"><?php echo ($post->user)?$post->user['created_at']->format('F-d-Y');?></a>
                        </li>
                        <li class="list-inline-item">
                            <i class="fa fa-tags"></i> <a href="#">Bootstrap4</a>
                        </li>
                    </ul>
                    <p><?php echo $post->description ?></p>
                   
                    <ul class="list-inline share-buttons">
                        <li class="list-inline-item">Share Post:</li>
                        <li class="list-inline-item">
                            <a href="#" class="social-icon-sm si-dark si-colored-facebook si-gray-round">
                                <i class="fa fa-facebook"></i>
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="social-icon-sm si-dark si-colored-twitter si-gray-round">
                                <i class="fa fa-twitter"></i>
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" class="social-icon-sm si-dark si-colored-linkedin si-gray-round">
                                <i class="fa fa-linkedin"></i>
                                <i class="fa fa-linkedin"></i>
                            </a>
                        </li>
                    </ul>
                    <hr class="mb40">
                    <h4 class="mb40 text-uppercase font500">About Author</h4>
                    <div class="media mb40">
                    <img src="<?php echo asset("storage").'/images/'.($post->user?$post->user->image: '' )?>" style="height:90px" class="img img-circle img-thumbnail img-responsive"/>
                        <div class="media-body">
                            <h5 class="mt-0 font700"><?php echo ($post->user)?$post->user->name: ''?> </h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                        </div>
                    </div>
                    <hr class="mb40">
                    <h4 class="mb40 text-uppercase font500">Comments ({{ $post->getComment->count()}})</h4>
                    <?php foreach ($post->getComment as $key => $value) { ?>
                        <?php if($value->comment){?>
                    <div class="media mb40">
                    <img src="<?php echo asset("storage").'/images/'.($value->getUser?$value->getUser->image:'')  ?>" style="height:90px" class="img img-circle img-thumbnail img-responsive"/>
                        <div class="media-body">
                        
                        
                            <h5 class="mt-0 font400 clearfix">
                                        <a href="#" class="float-right">Reply</a>
                                       
                                       <?php echo ($value->getUser)?$value->getUser->name:''; ?> </h5><?php echo $value->comment?>
                                        
                        </div>
                    </div>
                    <?php } ?>
                    <?php } ?>
                    
                    
                    <hr class="mb40">
                    <h4 class="mb40 text-uppercase font500">Post a comment</h4>
                    <form role="form" method = "post" action="{{route('comment.add')}}">
                    <input type = "hidden" name="_token" value="{{csrf_token()}}"/>
                     <input type="hidden" class="form-control" name="post_id" value="<?php echo $post->id;?>"/>
                        <div class="form-group">
                            <label>Comment</label>
                            @error('comment')
                    <div class="alert alert-danger">{{ $message }}</div>
                         @enderror
                            <textarea class="form-control" rows="5" placeholder="Comment" name="comment"></textarea>
                            </div>
                           
                        <div class="clearfix float-right">
                            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                        </div>
                    </form>
                </div>
            </article>
            <!-- post article-->

        </div>
        <div class="col-md-3 mb40">
            <div class="mb40">
                <form>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search..." aria-describedby="basic-addon2">
                        <button class="input-group-addon" id="basic-addon2"><i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
            <!--/col-->
            <div class="mb40">
                <h4 class="sidebar-title">Categories</h4>
                <ul class="list-unstyled categories">
                    <?php foreach ($category1 as $key => $value) { 
                        $active_class = '';
                        if($post->category == $value->id){
                            $active_class = 'active';
                        }
                            ?>
                    <li class ="<?php echo $active_class; ?>"><a href="#"><?php echo $value['name'];?></a></li>
             
                    <?php }?>
                </ul>
              
              
            </div>
            <!--/col-->
            <div>
                <h4 class="sidebar-title">Latest Post</h4>
                <ul class="list-unstyled">
                <?php foreach ($post_sort as $key => $value) { ?>
                    <li class="media">
                        
                            
                        <img class="d-flex mr-3 img-fluid" width="64" src="<?php echo asset("storage").'/images/'.($value->image?$value->image:'' )?>" alt="Generic placeholder image">
                        <div class="media-body">
                            <h5 class="mt-0 mb-1"><a href="#"><?php echo $value['title'];?></a></h5> <?php echo $value['created_at']->format('F-d-Y'); ?>
                        </div>
                    </li>
               
                    <?php } ?>

                </ul>
            </div>
        </div>
    </div>
</div>
@stop
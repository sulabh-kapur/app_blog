@extends('layouts.default');
@section('content')
<div class="container">
<?php if(count($category_list) > 0) { ?>

  <h2>Listing</h2>         
  <table class="table">
    <thead>
      <tr>
        <th>Name</th>
        <th>Image</th>

      </tr>
    </thead>
    <tbody>
        <?php foreach($category_list as $key => $value){?>
      <tr>
      <td><?php echo $value['name']; ?></td>
      <td><img style="width:60px;height:50px;" src="<?php echo asset("storage").'/images/'.$value->image ?>"/><td>
            <!-- <a href="./delete.php?id=<?php echo $value['id']; ?>" class="deletebtn btn btn-danger">Delete</a></td>  -->
        </tr>
      <?php } ?>
    </tbody>
  </table>
  {{$category_list->links()}}
  <?php }  else {?>
    <h3>Sorry,No Data is available!</h3>
<?php } ?>
</div>
@stop


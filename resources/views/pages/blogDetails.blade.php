@extends('master')
@section('main_content')


<div class="templatemo_post">
    <div class="post_title">
        {{$blog_info->blog_title}}</div>
    <div class="post_info">
        Posted by-{{$blog_info->author_name}}, {{$blog_info->created_at}}
    </div>
    <div class="post_body">
        <img src="<?php echo asset($blog_info->blog_image) ?>" alt="free css template" border="1" height="50px" width="100" />
        <p><?php echo $blog_info->blog_short_description ?></p>
        <p><?php echo $blog_info->blog_long_description ?></p>
    </div>

    @guest
    <h4>
        You need to <a href="{{URL::to('/login')}}">Login</a> for Comments
    </h4>
    @else

    <p>Post your comment</p>
    <hr/>
    {!!Form::open(['url' => '/save-comment','method'=>'post'])!!}
    <h3 style="color: green" align="center">
    <?php
    $message = Session::get('message');
    if ($message) {
        echo $message;
        session::put('message');
    }
    ?>

</h3>
    <table cellpadding="15">
        <tr>
            <td>Name</td>
            <td>  <input type="text" name="author_name">
            </td>
        </tr>
        <input type="hidden" name="blog_id" value="{{$blog_info->blog_id}}"class="span6">

        <tr>

            <td>Comments</td>
            <td>
 
                <textarea rows="4" cols="30" name="comments"></textarea>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="btn" value="Post Your Comments">
            </td>
        </tr>
    </table>
    {!! Form::close() !!}

    @endguest
</div>


@endsection
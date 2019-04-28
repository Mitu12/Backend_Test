@extends('master')
@section('main_content') 
<div class="templatemo_post">
    <h1>Recent Photos</h1>

    <div id="slider2" class="sliderwrapper">
        <div class="contentdiv"><img src="{{asset('public/images/templatemo_image_2.jpg')}}" alt="image" /></div>
        <div class="contentdiv"><img src="{{asset('public/images/templatemo_image_3.jpg')}}" alt="image" /></div>
        <div class="contentdiv"><img src="{{asset('public/images/templatemo_image_4.jpg')}}" alt="image" /></div>
    </div>

    <div id="paginate-slider2" class="pagination">

        <a href="#" class="toc">1</a> <a href="#" class="toc anotherclass">2</a> <a href="#" class="toc">3</a>
    </div>
    <script type="text/javascript">

        featuredcontentslider.init({
            id: "slider2", //id of main slider DIV
            contentsource: ["inline", ""], //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
            toc: "markup", //Valid values: "#increment", "markup", ["label1", "label2", etc]
            nextprev: ["Previous", "Next"], //labels for "prev" and "next" links. Set to "" to hide.
            revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
            enablefade: [true, 0.2], //[true/false, fadedegree]
            autorotate: [true, 3000], //[true/false, pausetime]
            onChange: function (previndex, curindex) {  //event handler fired whenever script changes slide
                //previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
                //curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
            }
        })

    </script>
</div> 

<div class="templatemo_post">
    @foreach($published_post as $v_post)
    <div class="templatemo_post">
        <div class="post_title"><a href="{{URL::to('/blog-details/'.$v_post->blog_id)}}">{{$v_post->blog_title}}</a>

        </div>
        <div class="post_info">
            Posted by-{{$v_post->author_name}}, {{$v_post->created_at}}
        </div>
        <div class="post_body">
            <img src="<?php echo asset($v_post->blog_image) ?>" alt="free css template" border="1" height="50px" width="100" />
            <p><?php echo $v_post->blog_short_description ?></p>
            

        </div>
           <div class="post_comment">
               
                    <!--<a href="#">No Comment</a>-->
                </div> 
    </div>

    @endforeach
</div> <!-- End of a post-->


@endsection
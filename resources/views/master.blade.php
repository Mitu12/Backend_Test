<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>My Blog</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="{{asset('public/templatemo_style.css')}}" rel="stylesheet" type="text/css" />
        <!--  HTML CSS Template Designed by w w w . t e m p l a t e m o . c o m  --> 
        <link rel="stylesheet" type="text/css" href="{{asset('public/contentslider.css')}}" />
        <script type="text/javascript" src="{{asset('public/contentslider.js')}}">
/***********************************************
 * Featured Content Slider- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
 * This notice MUST stay intact for legal use
 * Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
 ***********************************************/
        </script>
    </head>
    <body>
        <div id="templatemo_header_panel">
            <div id="templatemo_header_section">
                <div id="templatemo_title_section">
                    WEB BLOG
                </div>

            </div>
        </div> <!-- end of templatemo header panel -->

        <div id="templatemo_menu_panel">
            <div id="templatemo_menu_section">
                <ul>
                    <li><a href="{{URL::to('/')}}"  class="current">Home</a></li>
                    <li><a href="{{URL::to('/about')}}">About</a></li> 
                    @guest
                    <li><a href="{{URL::to('/login')}}">Login</a></li>                     
                    <li><a href="{{URL::to('/register')}}">Sign up</a></li>
                    @else 

                    <li>
                        <a  href="{{ route('logout') }}"
                            onclick="event.preventDefault();
                                               document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </li>
                    @endguest

                </ul> 
            </div>
        </div> <!-- end of menu -->

        <div id="templatemo_content_container">
            <div id="templatemo_content">
                <div id="templatemo_content_left">

                    @yield('main_content')

                </div> 

                <div id="templatemo_content_right">


                    <div class="templatemo_right_section"id="category" >
                        <h2>Categories</h2>

                        <?php
                        $all_category = DB::table('category')
                                ->where('publication_status', 1)
                                ->get();
                        ?>
                        <ul>
                            @foreach($all_category as $vcategory)
                            <li><a href="{{URL::to('/category-blog/'.$vcategory->category_id)}}">{{$vcategory->category_name}}</a></li>
                            @endforeach

                        </ul>                        


                    </div>

                    <div class="templatemo_right_section">
                        <h2>Recent Post</h2>
                        <?php
                        $recent_post = DB::table('blog')
                                ->orderBy('blog_id', 'desc')
                                ->limit(5)
                                ->get();
                        ?>
                        <ul>
                            @foreach($recent_post as  $v_post)
                            <li><a href="{{URL::to('/blog-details/'.$v_post->blog_id)}}">{{$v_post->blog_title}}</a></li>
                            @endforeach

                        </ul>  

                    </div>
                    <div class="templatemo_right_section">
                        <h2>Popular Post</h2>
                        <?php
                        $popular_post = DB::table('blog')
                                ->where('publication_status', 1)
                                ->orderBy('hit_counter', 'desc')
                                ->limit(5)
                                ->get();
                        ?>
                        <ul>
                            @foreach($popular_post as $v_post)
                            <li><a href="{{URL::to('/blog-details/'.$v_post->blog_id)}}">
                                    {{$v_post->blog_title}}
                                </a>({{$v_post->hit_counter}})</li>
                            @endforeach
                        </ul> 

                    </div>



                </div> <!-- end of right content -->
            </div> <!-- end of content -->
        </div> <!-- end of content container -->

        <div id="templatemo_bottom_panel">
            <div id="templatemo_bottom_section">

                <div class="templatemo_bottom_section_content">
                    <h3>W3C Validations</h3>
                    <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi dapibus dolor sit amet metus suscipit iaculis. Quisque at nulla eu elit adipiscing tempor.</p>
                    <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
                    <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a> 
                </div>

                <div class="templatemo_bottom_section_content">
                    <h3>Friends</h3>
                    <ul>
                        <li><a href="#">Website Templates</a></li>
                        <li><a href="#">Flash Templates</a></li>
                        <li><a href="#">Web Design Blog</a></li>
                        <li><a href="#">Nunc blandit orci</a></li>
                        <li><a href="#">Cum sociis natoque</a></li>
                    </ul>
                </div>

                <div class="templatemo_bottom_section_content">
                    <h3>Usage Policies</h3>
                    <ul>
                        <li><a href="#">Terms</a></li>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">About</a></li>                 
                        <li><a href="#">Contact</a></li> 
                    </ul>
                </div>
            </div> <!-- end of templatemo bottom section -->
        </div> <!-- end of templatemo bottom panel -->
        <!--  HTML CSS Template Designed by w w w . t e m p l a t e m o . c o m  --> 
        <div id="templatemo_footer_panel">
            <div id="templatemo_footer_section">
                Copyright © 2024 <a href="#">Your Blog Name</a> <!-- Credit: www.templatemo.com -->
            </div>
        </div>

    </body>
</html>
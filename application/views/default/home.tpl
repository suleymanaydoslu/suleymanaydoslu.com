{extends 'default/layout/master.tpl'}

{block name=extracss}
    <link href="{base_url('assets/panel/assets/ckeditor-office/plugins/codesnippet/lib/highlight/styles/default.css')}"
          rel="stylesheet">
    <script src="{base_url('assets/panel/assets/ckeditor-office/plugins/codesnippet/lib/highlight/highlight.pack.js')}"></script>
{/block}

{block name=content}
    <div class="sections">
        <div class="container">
            <div class="row">
                <div class="col-md-8 main-content">
                    <div class="post post-image">

                        <div class="post-head"><h3><a href="single-blog.html">Awesome Image Post.</a></h3>
                            <div class="post-meta">
                                <div><i class="fa fa-user"></i>BY : <a href="#">2code</a></div>
                                <div><i class="fa fa-clock-o"></i>August 20, 2014</div>
                                <div><i class="fa fa-comments"></i><a href="#">22 Comments</a></div>
                                <div><i class="fa fa-folder-open"></i>IN : <a href="#">WordPress</a>, <a
                                            href="#">PHP</a></div>
                                <div><i class="fa fa-heart"></i><a href="#">77</a></div>
                            </div><!-- End post-meta -->
                            <div class="clearfix"></div>
                        </div><!-- End post-head -->
                        <div class="post-wrap">
                            <div class="post-img"><a href="single-blog.html"><img alt="" src="images/post-1.png"></a>
                            </div>
                            <div class="post-inner">
                                <p>Mauris fermentum porta sem, non hendrerit enim bibendum consectetur. Fusce diam est,
                                    porttitor vehicula gravida at, accumsan bibendum tincidunt imperdiet. Maecenas quis
                                    magna faucibus, varius ante sit amet, varius augue. Praesent aliquam, augue ac
                                    pulvinar accumsan, risus arcu malesuada est, a imperdiet lacus libero ac tellus.
                                    Nunc fringilla ullamcorper quam at lacinia. Nullam suscipit mauris quis nibh
                                    accumsan, a scelerisque risus imperdiet. Maecenas eget ullamcorper sem, non
                                    hendrerit enim bibendum consectetur. Fusce diam est, porttitor vehicula gravida at,
                                    accumsan bibendum tincidunt imperdiet.</p>
                                <div class="clearfix"></div>
                                <div class="post-share-view">
                                    <div class="post-meta">
                                        <div><i class="fa fa-eye"></i><span>145 </span>Views</div>
                                        <div class="post-meta-share">
                                            <i class="fa fa-share-alt"></i>
                                            <a href="#">Share This</a>
                                            <div class="share-social">
                                                <ul>
                                                    <li class="social-facebook"><a href="#"><i
                                                                    class="fa fa-facebook"></i></a></li>
                                                    <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a>
                                                    </li>
                                                    <li class="social-google"><a href="#"><i
                                                                    class="fa fa-google-plus"></i></a></li>
                                                </ul>
                                                <i class="fa fa-caret-down"></i>
                                            </div><!-- End follow-social -->
                                        </div>
                                        <a href="single-blog.html" class="button post-more">Continue Reading</a>
                                    </div><!-- End post-meta -->
                                </div><!-- End post-share-view -->
                                <div class="clearfix"></div>
                            </div><!-- End post-inner -->
                        </div><!-- End post-wrap -->
                    </div><!-- End post -->

                    <div class="page-navigation clearfix">
                        <div class="nav-next"><a href="#"><i
                                        class="fa fa-angle-double-left"></i><span>Old Entries</span></a></div>
                        <div class="nav-previous"><a href="#"><span>New Entries</span><i
                                        class="fa fa-angle-double-right"></i></a></div>
                    </div><!-- End page-navigation -->

                </div><!-- End main-content -->
                <div class="col-md-4 sidebar">
                    <div class="widget widget-about">
                        <div class="widget-about-img"><img alt="" src="images/about-img.png"></div>
                        <h3>Ahmed Hassan Mohammed</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua.</p>
                        <div class="social-ul">
                            <ul>
                                <li class="social-facebook"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li class="social-twitter"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li class="social-google"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li class="social-linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li class="social-youtube"><a href="#"><i class="fa fa-youtube-play"></i></a></li>
                                <li class="social-rss"><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div><!-- End social-ul -->
                        <div class="clearfix"></div>
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-search"></i>Search</div>
                        <div class="widget-search">
                            <form>
                                <input type="search" value="Search here ..."
                                       onfocus="if(this.value==this.defaultValue)this.value='';"
                                       onblur="if(this.value=='')this.value=this.defaultValue;">
                                <input class="button" type="submit" value="Search Now">
                            </form>
                        </div><!-- End widget-search -->
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-folder-open"></i>Categories</div>
                        <div class="widget-categories">
                            <ul>
                                <li><a href="#">Branding<span>(5)</span></a><i class="fa fa-angle-double-right"></i>
                                </li>
                                <li><a href="#">UI Design<span>(77)</span></a><i class="fa fa-angle-double-right"></i>
                                </li>
                                <li><a href="#">Typography<span>(6)</span></a><i class="fa fa-angle-double-right"></i>
                                </li>
                                <li><a href="#">Wordpress<span>(11)</span></a><i class="fa fa-angle-double-right"></i>
                                </li>
                                <li><a href="#">Development<span>(45)</span></a><i class="fa fa-angle-double-right"></i>
                                </li>
                                <li><a href="#">Photography<span>(22)</span></a><i class="fa fa-angle-double-right"></i>
                                </li>
                            </ul>
                        </div><!-- End widget-categories -->
                    </div><!-- End widget -->

                    <div class="widget widget-statistics">
                        <div class="widget-title"><i class="fa fa-signal"></i>Social Statistics</div>
                        <ul>
                            <li class="statistics-facebook"><a href="#"><i class="fa fa-facebook"></i>11200
                                    <span>Fans</span></a></li>
                            <li class="statistics-twitter"><a href="#"><i class="fa fa-twitter"></i>770
                                    <span>Followers</span></a></li>
                            <li class="statistics-vimeo"><a href="#"><i class="fa fa-vimeo-square"></i>155 <span>Subscribers</span></a>
                            </li>
                            <li class="statistics-youtube"><a href="#"><i class="fa fa-youtube-play"></i>200 <span>Subscribers</span></a>
                            </li>
                            <li class="statistics-google"><a href="#"><i class="fa fa-google-plus"></i>514 <span>Followers</span></a>
                            </li>
                            <li class="statistics-dribbble"><a href="#"><i class="fa fa-dribbble"></i>700 <span>Followers</span></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div><!-- End widget -->

                    <div class="widget tabs-warp widget-tabs">
                        <div class="widget-title">
                            <ul class="tabs">
                                <li class="tab"><a href="#" class="">Popular</a></li>
                                <li class="tab"><a href="#" class="current">Comments</a></li>
                                <li class="tab"><a href="#">Tags</a></li>
                            </ul>
                        </div>
                        <div class="tab-inner-warp">
                            <div class="widget-posts">
                                <ul>
                                    <li class="widget-posts-image">
                                        <div class="widget-posts-img"><a href="single-blog.html"><i
                                                        class="fa fa-image"></i><img alt=""
                                                                                     src="images/post-img-s-1.png"></a>
                                        </div>
                                        <div class="widget-posts-content">
                                            <a href="single-blog.html">Awesome Image Post.</a>
                                            <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                            <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                        </div>
                                    </li>
                                    <li class="widget-posts-quote">
                                        <div class="widget-posts-img"><a href="single-blog.html"><i
                                                        class="fa fa-quote-left"></i></a></div>
                                        <div class="widget-posts-content">
                                            <a href="single-blog.html">Awesome Quote Post.</a>
                                            <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                            <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                        </div>
                                    </li>
                                    <li class="widget-posts-vimeo">
                                        <div class="widget-posts-img"><a href="single-blog.html"><i
                                                        class="fa fa-vimeo-square"></i><img alt=""
                                                                                            src="images/post-img-s-2.png"></a>
                                        </div>
                                        <div class="widget-posts-content">
                                            <a href="single-blog.html">Awesome Vimeo Post.</a>
                                            <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                            <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                        </div>
                                    </li>
                                    <li class="widget-posts-gallery">
                                        <div class="widget-posts-img"><a href="single-blog.html"><i
                                                        class="fa fa-image"></i><img alt=""
                                                                                     src="images/post-img-s-3.png"></a>
                                        </div>
                                        <div class="widget-posts-content">
                                            <a href="single-blog.html">Awesome Gallery Post.</a>
                                            <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                            <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                        </div>
                                    </li>
                                </ul>
                            </div><!-- End widget-posts -->
                        </div>
                        <div class="tab-inner-warp">
                            <div class="widget-comments">
                                <ul>
                                    <li>
                                        <div class="widget-comments-img"><a href="#"><img alt=""
                                                                                          src="images/comment-img-1.png"></a>
                                        </div>
                                        <div class="widget-comments-content">
                                            <a href="#">2code</a>
                                            <p><a href="#">consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut.</a></p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="widget-comments-img"><a href="#"><img alt=""
                                                                                          src="images/comment-img-2.png"></a>
                                        </div>
                                        <div class="widget-comments-content">
                                            <a href="#">Begha</a>
                                            <p><a href="#">consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut.</a></p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="widget-comments-img"><a href="#"><img alt=""
                                                                                          src="images/comment-img-3.png"></a>
                                        </div>
                                        <div class="widget-comments-content">
                                            <a href="#">Johnny</a>
                                            <p><a href="#">consectetur adipisicing elit, sed do eiusmod tempor
                                                    incididunt ut.</a></p>
                                        </div>
                                    </li>
                                </ul>
                            </div><!-- End widget-comments -->
                        </div>
                        <div class="tab-inner-warp">
                            <div class="widget_tag_cloud">
                                <a href="#">projects</a>
                                <a href="#">Portfolio</a>
                                <a href="#">Wordpress</a>
                                <a href="#">Html</a>
                                <a href="#">Css</a>
                                <a href="#">jQuery</a>
                                <a href="#">2code</a>
                                <a href="#">vbegy</a>
                                <a href="#">projects</a>
                                <a href="#">Portfolio</a>
                                <a href="#">Wordpress</a>
                                <a href="#">Html</a>
                                <a href="#">Css</a>
                                <a href="#">jQuery</a>
                                <a href="#">2code</a>
                                <a href="#">vbegy</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-dribbble"></i>Dribbble Gallery</div>
                        <div class="widget-dribbble">
                            <ul></ul>
                        </div>
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-bolt"></i>Popular Posts</div>
                        <div class="widget-posts">
                            <ul>
                                <li class="widget-posts-image">
                                    <div class="widget-posts-img"><a href="single-blog.html"><i class="fa fa-image"></i><img
                                                    alt="" src="images/post-img-s-1.png"></a></div>
                                    <div class="widget-posts-content">
                                        <a href="single-blog.html">Awesome Image Post.</a>
                                        <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                        <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                    </div>
                                </li>
                                <li class="widget-posts-quote">
                                    <div class="widget-posts-img"><a href="single-blog.html"><i
                                                    class="fa fa-quote-left"></i></a></div>
                                    <div class="widget-posts-content">
                                        <a href="single-blog.html">Awesome Quote Post.</a>
                                        <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                        <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                    </div>
                                </li>
                                <li class="widget-posts-vimeo">
                                    <div class="widget-posts-img"><a href="single-blog.html"><i
                                                    class="fa fa-vimeo-square"></i><img alt=""
                                                                                        src="images/post-img-s-2.png"></a>
                                    </div>
                                    <div class="widget-posts-content">
                                        <a href="single-blog.html">Awesome Vimeo Post.</a>
                                        <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                        <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                    </div>
                                </li>
                                <li class="widget-posts-gallery">
                                    <div class="widget-posts-img"><a href="single-blog.html"><i class="fa fa-image"></i><img
                                                    alt="" src="images/post-img-s-3.png"></a></div>
                                    <div class="widget-posts-content">
                                        <a href="single-blog.html">Awesome Gallery Post.</a>
                                        <span><i class="fa fa-user"></i>BY : <a href="#">2code</a></span>
                                        <span><i class="fa fa-clock-o"></i>August 20, 2014</span>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- End widget-posts -->
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-comments"></i>Recent Comments</div>
                        <div class="widget-comments">
                            <ul>
                                <li>
                                    <div class="widget-comments-img"><a href="#"><img alt=""
                                                                                      src="images/comment-img-1.png"></a>
                                    </div>
                                    <div class="widget-comments-content">
                                        <a href="#">2code</a>
                                        <p><a href="#">consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                                ut.</a></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-comments-img"><a href="#"><img alt=""
                                                                                      src="images/comment-img-2.png"></a>
                                    </div>
                                    <div class="widget-comments-content">
                                        <a href="#">Begha</a>
                                        <p><a href="#">consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                                ut.</a></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="widget-comments-img"><a href="#"><img alt=""
                                                                                      src="images/comment-img-3.png"></a>
                                    </div>
                                    <div class="widget-comments-content">
                                        <a href="#">Johnny</a>
                                        <p><a href="#">consectetur adipisicing elit, sed do eiusmod tempor incididunt
                                                ut.</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- End widget-comments -->
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-flickr"></i>Flickr</div>
                        <div class="widget-flickr"></div>
                        <div class="clearfix"></div>
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-bookmark"></i>Advertisement</div>
                        <div class="widget-adv">
                            <a href="http://bitly.com/UoVhcn"><img alt="" src="images/adv.png"></a>
                        </div>
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-tags"></i>Tags</div>
                        <div class="widget_tag_cloud">
                            <a href="#">projects</a>
                            <a href="#">Portfolio</a>
                            <a href="#">Wordpress</a>
                            <a href="#">Html</a>
                            <a href="#">Css</a>
                            <a href="#">jQuery</a>
                            <a href="#">2code</a>
                            <a href="#">vbegy</a>
                            <a href="#">projects</a>
                            <a href="#">Portfolio</a>
                            <a href="#">Wordpress</a>
                            <a href="#">Html</a>
                            <a href="#">Css</a>
                            <a href="#">jQuery</a>
                            <a href="#">2code</a>
                            <a href="#">vbegy</a>
                        </div>
                        <div class="clearfix"></div>
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-twitter"></i>Latest Tweets<a class="twitter-follow"
                                                                                               href="#">Follow</a></div>
                        <div class="widget-twitter"></div>
                    </div><!-- End widget -->

                    <div class="widget">
                        <div class="widget-title"><i class="fa fa-lock"></i>Login Area</div>
                        <div class="widget-login">
                            <form>
                                <input type="text" value="Username"
                                       onfocus="if(this.value==this.defaultValue)this.value='';"
                                       onblur="if(this.value=='')this.value=this.defaultValue;">
                                <div class="widget-login-password">
                                    <input type="password" value="Password"
                                           onfocus="if(this.value==this.defaultValue)this.value='';"
                                           onblur="if(this.value=='')this.value=this.defaultValue;">
                                    <a href="#">Forget</a>
                                </div>
                                <input type="submit" value="Login" class="button">
                            </form>
                        </div>
                    </div><!-- End widget -->
                </div><!-- End sidebar -->
            </div><!-- End row -->
        </div><!-- End container -->
    </div>
{/block}

{block name="extrajs"}
    <script>hljs.initHighlightingOnLoad();</script>
{/block}
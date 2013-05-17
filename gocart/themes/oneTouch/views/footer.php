<div id="darkf">
    <section id="footer" role="contentinfo">
        <div class="row">
            <div class="five columns">
                <section id="crum_latest_tweets-2" class="widget-1 widget-first widget twitter-widget">
                    <div class="widget-inner">
                        <div class="subtitle">Our latest twitter news</div>
                        <h3>Latest Tweets</h3>
                        <?php  
                          
                            $userid = 'UKOpen'; //your handle
                            $count = '3';
                            $responseJson = file_get_contents('http://api.twitter.com/1/statuses/user_timeline.json?screen_name='.$userid.'&include_rts=1&count='.$count);

                            if ($responseJson) {
                                $response = json_decode($responseJson);
                            }   

                            function dateDiff ($d1, $d2) {
                                // Return the number of days between the two dates:

                                  return round(abs(strtotime($d1)-strtotime($d2))/86400);

                                }  // end function dateDiff
                            foreach ($response as $tweet) {

                                //$current = new DateTime(date('m/d/Y h:i:s a'));
                                //$db_date = new DateTime($tweet->created_at);
                                $days = dateDiff(date('m/d/Y h:i:s a'),$tweet->created_at);
                                echo '<div class="tweet">';  
                                $tweet_text = $tweet->text; //get the tweet

                                // make links link to URL
                                $tweet_text = preg_replace("#(^|[\n ])([\w]+?://[\w\#$%&~/.\-;:=,?@\[\]+]*)#is", "\\1<a href='\\2'>\\2</a>", $tweet_text); 

                                // make hashtags link to a search for that hashtag
                                $tweet_text = preg_replace("/#([a-z_0-9]+)/i", "<a href=\"http://twitter.com/search/$1\">$0</a>", $tweet_text);

                                // make mention link to actual twitter page of that person
                                $tweet_text = preg_replace("/@([a-z_0-9]+)/i", "<a href=\"http://twitter.com/$1\">$0</a>", $tweet_text);

                                // display each tweet in a list item
                                echo  $tweet_text ;
                                echo "<div class='time'>$days days ago</div> " ;
                                echo '</div>'; 
                            } 

                        ?>


                        <!--  Crumina: Check this! Great #themeforest item 'One Touch - Multifunctional Metro Stylish Theme'
                        <div class='time'>77 days ago</div>

                        <div class='tweet'>Crumina: BGs
                        <div class='time'>105 days ago</div>
                        </div>
                        <div class='tweet'>Crumina: Check this! Great creative Photo and video WP Theme - Boson.
                        <div class='time'>111 days ago</div>
                        </div> -->
                    </div>
                </section>
            </div>
            <div class="five columns">
                <section id="recent_posts-2" class="widget-1 widget-first widget recent-posts-widget">
                    <div class="widget-inner">
                        <div class="subtitle"> Some latest news</div>
                        <h3>Recent posts</h3>
                        <article class="mini date">
                            <time datetime="2012-12-06T10:29:53+00:00"> <span class="day">06</span> <span class="mounth">Dec.</span> <span class="time">10:29 am</span> </time>
                            <div class="entry-content"> <a href='' class="title">Meet Joann Davidson: photomodel, athlete, excellent wife and beautiful woman</a>
                                <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at,... ... </p>
                            </div>
                        </article>
                        <article class="mini date">
                            <time datetime="2012-12-06T10:28:54+00:00"> <span class="day">06</span> <span class="mounth">Dec.</span> <span class="time">10:28 am</span> </time>
                            <div class="entry-content"> <a href='' class="title">Video post example (not in slider)</a>
                                <p> http://vimeo.com/35396305

                                    &nbsp;

                                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at,... ... </p>
                            </div>
                        </article>
                        <article class="mini date">
                            <time datetime="2012-12-05T14:02:09+00:00"> <span class="day">05</span> <span class="mounth">Dec.</span> <span class="time">2:02 pm</span> </time>
                            <div class="entry-content"> <a href='' class="title">Gallery post example (Not in slider)</a>
                                <p> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at,... ... </p>
                            </div>
                        </article>
                    </div>
                </section>
            </div>
            <div class="five columns">
                <section id="facebook_widget-2" class="widget-1 widget-first widget widget_facebook_widget">
                    <div id="fb-root"></div>
                        <script>(function(d, s, id) {
                          var js, fjs = d.getElementsByTagName(s)[0];
                          if (d.getElementById(id)) return;
                          js = d.createElement(s); js.id = id;
                          js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
                          fjs.parentNode.insertBefore(js, fjs);
                        }(document, 'script', 'facebook-jssdk'));</script>
                    <div class="widget-inner">
                        <div class="subtitle">Integrated facebook widget</div>
                        <h3>Facebook widget</h3>    
                        <div class="fb-like-box" data-href="https://www.facebook.com/pages/UK-Open-College/411574175557181" data-width="292" data-height="300" data-show-faces="true" data-colorscheme="dark" data-stream="false" data-show-border="true" data-header="false"></div>                    </div>
                </section>
            </div>
        </div>
        <div class="row dop-row">
            <div class="five columns">
                <section class="footer-logo">
                    <h1> <a href="#">UK Open College</a></h1>
                </section>
            </div>
            <div class="five columns">
                <section class="widget widget_info">
                    <div class="info-widget">
                        <div class="subtitle">IT IS REALLY INTERESTING</div>
                        <h3>About company</h3>
                        <p>I'm not sure that anyone saw this comming,but now that its here, its make goood sense:Parents have smart phones. Some of their chil-</p>
                    </div>
                </section>
            </div>
            <div class="five columns">
                <section class="adress-icon">
                    <div data-picture data-alt="adress-icon" class="inline-icon">
                        <div data-src="<?php echo theme_img("icons/map_w.png");?>"></div>
                        <div data-src="<?php echo theme_img("icons/map_w@2x.png");?>" data-media="(min-width: 400px) and (min-device-pixel-ratio: 1.5)"></div>

                        <noscript>
                            <img src="<?php echo theme_img("custom-slider-img/map_w.png");?>" alt="adress-icon" class="adress-icon">
                        </noscript>
                    </div>
                    <p>Address:   123456 Street Name, Los Angeles <br>
                        Phone:   (1800) 765-4321</p>
                </section>
            </div>
        </div>
    </section>
</div>
<a href="#" id="linkTop" class="backtotop"> <span></span> </a> 
<?php echo theme_css('farbtastic1.3.css', true); ?>
<?php echo theme_css('grid.css', true); ?>
<?php echo theme_js('js/jquery-plugins.min.js', true);?> 
<?php echo theme_js('js/aqpb-view.js', true);?> 
<?php echo theme_js('js/add-to-cart.min.js', true);?> 
<?php echo theme_js('js/jquery.ui.core.min.js', true);?> 
<?php echo theme_js('js/jquery.ui.widget.min.js', true);?> 
<?php echo theme_js('js/jquery.ui.tabs.min.js', true);?>
<?php echo theme_js('js/jquery-ui-tabs-rotate.js', true);?>
<?php echo theme_js('js/js_composer_front.js', true);?> 
<?php echo theme_js('js/jquery.isotope.min.js', true);?>
<?php echo theme_js('js/metro-list.js', true);?> 
<?php echo theme_js('js/jquery.easing.1.3.js', true);?>
<?php echo theme_js('js/jquery.nicescroll.js', true);?>
<?php echo theme_js('js/jquery.colorbox.js', true);?>
<?php echo theme_js('js/jflickrfeed.min.js', true);?>
<?php echo theme_js('js/site.js', true);?> 
<?php echo theme_js('js/farbtastic.js', true);?> 
<?php echo theme_js('js/custom_style.js', true);?> 
<?php echo theme_js('js/jquery.quicksand.js', true);?>
<?php echo theme_js('js/jquery.prettyPhoto.js', true);?>
<?php echo theme_js('js/jquery.masonry.min.js', true);?>
<?php echo theme_js('js/scrolling.js', true);?>
<?php echo theme_js('js/woocommerce.min.js?ver=1.6.6', true);?>


</body>
</html>
<!-- Fullscreen jQuery template -->
<!--<div class="sort-panel">  
    <h1 class="page-title" style="padding: -9px;"><a href="javascript:void(0)" class="all">All Courses</a> <span style="float: right;"> 
            <a href="" rel="nofollow" data-product_id="868" class="add_to_cart_button button product_type_simple" style="padding: 75 75 75 75;">  All Courses </a></span>
        <br/>

        <?php foreach($this->categories as $cat_menu):?> 
            <a href="javascript:void(0)" class="<?php echo $cat_menu['category']->name;?>" style="color: black";> <?php echo $cat_menu['category']->name;?>

            <span class="delim"> / </span></a> 
            <?php  endforeach;?>
    </h1>

</div> --> 
<!--<div class="row">
    <div class="fifteen columns" id="page-title">
        <div id="portfolio-page" class="fifteen columns">
            <div id="aq-block-5" class="aq-block aq-block-aq_recent_block fifteen columns aq-first cf"> 
                <div id="recent" class="section-block clearing-container">   

                        <div class="works-list">
                            <ul class="filterable-grid">  

                                <?php  foreach($this->categories as $cat_menu):?> 
                                    <li class="item" data-id="id-1" data-type="dentity motion sites web-design ">
                                        <div class="half">

                                            <div class="pic">
                                            <img src="<?php echo catogery_img('images/small/'.$cat_menu['category']->image); ?>" style="margin:0 0 0 0;" alt="Watchers" title="Watchers" >
                                            </div>
                                            <div class="description">
                                                <div class="title">
                                                    <time datetime="<?php echo $cat_menu['category']->publish_date;?>">
                                                    <?php echo $cat_menu['category']->publish_date;?></time>
                                                    <h4><?php echo $cat_menu['category']->name;?></h4>
                                                </div>
                                            </div>
                                            <a href=""></a> 
                                        </div>

                                    </li>

                                    <?php  endforeach; ?>

                            </ul>
                        </div>
                    </div>


                </div>
            </div>
        </div>
        <nav id="post-nav" class="page-nav">
            <a href="" ><span>Older</span></a></nav>  
    </div>-->
    <div id="aq-block-5" class="aq-block aq-block-aq_recent_block fifteen columns aq-first cf"> 
                <div id="recent" class="section-block clearing-container">
                    <span class="icon recent"></span>
                    <div class="subtitle">IT IS BEST WE HAVE MADE</div>
                    <h2 class="block-title">Recent Projects</h2>
                    <div class="sort-panel">
                        <ul class="filter clearfix">
                            <li class="active">
                                <a href="javascript:void(0)" class="all">All /</a>
                            </li>
                            <?php foreach($this->categories as $cat_menu):?> 

                            <li>
                                <a href="javascript:void(0)" class="<?php echo str_replace(' ','',$cat_menu['category']->name);?>" style="color: black";> <?php echo $cat_menu['category']->name;?>   / </a>
                            </li>

                              <?php  endforeach;?>
                           
                        </ul>
                    </div>

                    <div class="works-list">
                        <ul class="filterable-grid">
                          <?php  
                        
                          foreach($this->categories as $cat_menu):?>  

                            <li class="item" data-id="id-1" data-type="<?php echo str_replace(' ','',$cat_menu['category']->name);?>">
                               <? 
                                 
                               foreach($cat_menu['children'] as $course):?>
                                <div class="half odd">
                                    <div class="pic"><img src="<?php echo catogery_img('images/small/'.$course['category']->image); ?>" style="margin:0 0 0 0;" alt="Watchers" title="Watchers" ></div>
                                    <div class="description">
                                           <div class="title">
                                                    <time datetime="<?php echo $course['category']->publish_date;?>">
                                                    <?php echo $course['category']->publish_date;?></time>
                                                    <h4><?php echo $course['category']->name;?></h4>
                                                </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/watchers/"></a>
                                </div>
                                <?php  endforeach; ?>   
                            </li>
                               <?php  endforeach; ?>   



                          <!--  <li class="item" data-id="id-2" data-type="motion print ">

                                <div class="half even">
                                    <div class="pic"><img src="images/uploads/tumblr_m5ba40QiFR1qdq19eo2_r1_1280-193x180.jpg"
                                            style="margin:0 0;" alt="Great visual design" title="Great visual design" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-14T10:54:44+00:00" >December 14, 2012</time>
                                            <h4>Great visual design</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/great-visual-design/"></a>
                                </div>
                            </li>




                            <li class="item" data-id="id-3" data-type="dentity motion print sites ">

                                <div class="large odd">
                                    <div class="pic"><img src="images/uploads/tumblr_m6p161c56j1qdq19eo1_1280-390x180.jpg" 
                                            style="margin:0 0;" alt="Great monster" title="Great monster" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-11T11:20:17+00:00" >December 11, 2012</time>
                                            <h4>Great monster</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/another-item/"></a>
                                </div>
                            </li>




                            <li class="item" data-id="id-4" data-type="dentity photography sites web-design ">

                                <div class="half even">
                                    <div class="pic"><img src="images/uploads/tumblr_mbbn3cCbpO1qdq19eo1_1280-193x180.jpg" 
                                            style="margin:0 0;" alt="Portfolio work from illustrator" title="Portfolio work from illustrator" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-11T11:14:06+00:00" >December 11, 2012</time>
                                            <h4>Portfolio work from illustrator</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/portfolio-work-from-illustrator/"></a>
                                </div>
                            </li>




                            <li class="item" data-id="id-5" data-type="dentity print sites web-design ">

                                <div class="half odd">
                                    <div class="pic"><img src="images/uploads/tumblr_m3yj7gRlDS1qdq19eo1_1280-193x180.jpg" 
                                            style="margin:0 0;" alt="One of portfolio item" title="One of portfolio item" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-11T10:50:40+00:00" >December 11, 2012</time>
                                            <h4>One of portfolio item</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/test-portfolio-item/"></a>
                                </div>
                            </li>




                            <li class="item" data-id="id-6" data-type="photography print web-design ">

                                <div class="large even">
                                    <div class="pic"><img src="images/uploads/tumblr_m5ba40QiFR1qdq19eo1_r1_1280-390x180.jpg" style="margin:0 0;" alt="I dont know how to name it" title="I dont know how to name it" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-11T10:28:45+00:00" >December 11, 2012</time>
                                            <h4>I dont know how to name it</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/i-dont-kow-how-to-name-it/"></a>
                                </div>
                            </li>




                            <li class="item" data-id="id-7" data-type="motion photography print sites ">

                                <div class="half odd">
                                    <div class="pic"><img src="images/uploads/tumblr_lxxyzz6dVc1qdq19eo1_1280-193x180.jpg" 
                                            style="margin:0 0;" alt="Portfolio item name" title="Portfolio item name" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-11T10:00:54+00:00" >December 11, 2012</time>
                                            <h4>Portfolio item name</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/next-item/"></a>
                                </div>
                            </li>




                            <li class="item" data-id="id-8" data-type="dentity motion photography sites ">

                                <div class="half even">
                                    <div class="pic"><img src="images/uploads/tumblr_m8ddmh57wQ1qdq19eo1_r1_1280-1-193x180.jpg" 
                                            style="margin:0 0;" alt="Look at me" title="Look at me" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-11T09:59:58+00:00" >December 11, 2012</time>
                                            <h4>Look at me</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/funny-bunnies/"></a>
                                </div>
                            </li>




                            <li class="item" data-id="id-9" data-type="dentity motion print sites ">

                                <div class="large odd">
                                    <div class="pic"><img src="images/uploads/tumblr_mamsrxZKYW1qdq19eo1_r1_1280-390x180.jpg" style="margin:0 0;" alt="Monster" title="Monster" ></div>
                                    <div class="description">
                                        <div class="title">
                                            <time datetime="2012-12-11T09:40:20+00:00" >December 11, 2012</time>
                                            <h4>Monster</h4>
                                        </div>
                                    </div>
                                    <a href="http://theme.crumina.net/onetouch/portfolio/monster/"></a>
                                </div>
                            </li>
                                                                                         -->


                        </ul>
                    </div>
                </div>


                <script type="text/javascript">
                    /*-----------------------------------------------------------------------------------

                    Custom JS - All front-end jQuery

                    -----------------------------------------------------------------------------------*/

                    jQuery(document).ready(function($) {

                        function portfolio_quicksand() {

                            // Setting Up Our Variables
                            var $filter;
                            var $container;
                            var $containerClone;
                            var $filterLink;
                            var $filteredItems

                            // Set Our Filter
                            $filter = $('.filter li.active a').attr('class');

                            // Set Our Filter Link
                            $filterLink = $('.filter li a');

                            // Set Our Container
                            $container = $('ul.filterable-grid');

                            // Clone Our Container
                            $containerClone = $container.clone();

                            // Apply our Quicksand to work on a click function
                            // for each for the filter li link elements
                            $filterLink.click(function(e)
                            {
                                // Remove the active class
                                $('.filter li').removeClass('active');

                                // Split each of the filter elements and override our filter
                                $filter = $(this).attr('class').split(' ');

                                // Apply the 'active' class to the clicked link
                                $(this).parent().addClass('active');

                                // If 'all' is selected, display all elements
                                // else output all items referenced to the data-type
                                if ($filter == 'all') {
                                    $filteredItems = $containerClone.find('li');
                                }
                                else {
                                    $filteredItems = $containerClone.find('li[data-type~=' + $filter + ']');
                                }

                                // Finally call the Quicksand function
                                $container.quicksand($filteredItems,
                                {
                                    // The Duration for animation
                                    duration: 750,
                                    // the easing effect when animation
                                    easing: 'easeInOutQuad'
                                    // height adjustment becomes dynamic

                                });

                                //Initalize our PrettyPhoto Script When Filtered
                                $container.quicksand($filteredItems,
                                function () { lightbox(); }
                                );
                            });
                        }

                        if(jQuery().quicksand) {
                            portfolio_quicksand();
                        }


                    }); // END OF DOCUMENT
                </script>
            </div>

<script type="text/javascript">
    jQuery(document).ready(function(){


        var $container = jQuery('#container');

        $container.imagesLoaded( function(){
            $container.masonry({
                itemSelector : 'div.block'
            });
        });


    });
</script>






<a href="#" id="linkTop" class="backtotop">
    <span></span>
</a>

<script type="text/javascript">
    /*-----------------------------------------------------------------------------------

    Custom JS - All front-end jQuery

    -----------------------------------------------------------------------------------*/

    jQuery(document).ready(function($) {

        function portfolio_quicksand() {

            // Setting Up Our Variables
            var $filter;
            var $container;
            var $containerClone;
            var $filterLink;
            var $filteredItems

            // Set Our Filter
            $filter = $('.filter li.active a').attr('class');

            // Set Our Filter Link
            $filterLink = $('.filter li a');

            // Set Our Container
            $container = $('ul.filterable-grid');

            // Clone Our Container
            $containerClone = $container.clone();

            // Apply our Quicksand to work on a click function
            // for each for the filter li link elements
            $filterLink.click(function(e)
            {
                // Remove the active class
                $('.filter li').removeClass('active');

                // Split each of the filter elements and override our filter
                $filter = $(this).attr('class').split(' ');

                // Apply the 'active' class to the clicked link
                $(this).parent().addClass('active');

                // If 'all' is selected, display all elements
                // else output all items referenced to the data-type
                if ($filter == 'all') {
                    $filteredItems = $containerClone.find('li');
                }
                else {
                    $filteredItems = $containerClone.find('li[data-type~=' + $filter + ']');
                }

                // Finally call the Quicksand function
                $container.quicksand($filteredItems,
                {
                    // The Duration for animation
                    duration: 750,
                    // the easing effect when animation
                    easing: 'easeInOutQuad'
                    // height adjustment becomes dynamic

                });

                //Initalize our PrettyPhoto Script When Filtered
                $container.quicksand($filteredItems,
                function () { lightbox(); }
                );
            });
        }

        if(jQuery().quicksand) {
            portfolio_quicksand();
        }


    }); // END OF DOCUMENT
                </script>
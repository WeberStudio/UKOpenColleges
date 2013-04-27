<!-- Fullscreen jQuery template -->
    <div id="aq-block-5" class="aq-block aq-block-aq_recent_block fifteen columns aq-first cf" style="margin-top: -25px;"> 
                                 <h1 class="page-title" style="padding: -9px;">
                   <a href="javascript:void(0)" class="all">All Courses</a> 
                   <span style="float: right;"> 
                    <div class="sort-panel">  
                   <ul class="filter clearfix">
                   <li>
                   <a href="javascript:void(0)" rel="nofollow" data-product_id="868" class="button" style="padding: 75 75 75 75;">  All Courses </a>
                    </li>
                   </ul>
                   </div>
                   </span>
                   
                   </h1>
                   <div class="line"> </div>
                <div id="recent" class="section-block clearing-container">
                    <div class="sort-panel">
                        <ul class="filter clearfix">
                           <!-- <li class="active">
                                <a href="javascript:void(0)" class="all">All /</a>
                            </li>  -->
                            <?php foreach($this->categories as $cat_menu):?> 

                            <li class="active">
                                <a href="javascript:void(0)" class="<?php echo str_replace(' ','',$cat_menu['category']->id);?>" style="color: black";> <?php echo $cat_menu['category']->name;?>   / </a>
                            </li>

                              <?php  endforeach;?>
                           
                        </ul>
                    </div>

                    <div class="works-list">
                        <ul class="filterable-grid">
                          <?php  
                         //  echo '<pre>'; print_r($this);
                          $counter = 0;
                          $class = '';
                          $marginleft = '';
                          foreach($allProduct as $course):
                            if($counter%2 == 0)
                            {
                                $class = 'even';
                            }
                            else{
                                 $class = 'odd';
                            }
                             if($counter%4 == 0)
                            {
                                $marginleft = 'margin0';
                            }
                            else{
                                 $marginleft = 'margin36';
                            }
                             
                          ?>  
                              
                            <li class="item" style="height: 226px; width: 270px;"  data-id="id-1" data-type="<?php echo $course['category_id'];?>">
                               <? 
                                 
                               
                             //  echo '<pre>';print_r($course);
                               //if($course['category_id'] == $cat_menu['category']->id)
                              // {
                               ?>
                                <div class="half <?=$class?>" style="height: 300px; width: 300px">
                                    <div class="pic" style="height: 300px; width: 300px"><img  src="<?php echo catogery_img('images/medium/'.$course['images']); ?>" style="margin:0 0 0 0;" alt="Watchers" title="Watchers" ></div>
                                    <div class="description">
                                           <div class="title" align="center">
                                                    
                                                    <h4><?php echo $course['name'].' Course';?></h4>
                                                     <h4 align="center" style="color: black;"><?php echo 'Detail';?></h4>
                                                    
                                                </div>
                                    </div>
                                </div>
                            </li>
                               <?php $counter++; endforeach; ?>   
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
                                //console.log($filter);
                                if ($filter == 'button') {
                                    $filteredItems = $containerClone.find('li');
                                }
                                else {
                                    $filteredItems = $containerClone.find('li[data-type~=' + $filter + ']');
                                  
                                }

                                // Finally call the Quicksand function
                                $container.quicksand($filteredItems,
                                {
                                    // The Duration for animation
                                    duration: 1000,
                                    // the easing effect when animation
                                    easing: 'easeInOutQuad'
                                    // height adjustment becomes dynamic

                                });

                                //Initalize our PrettyPhoto Script When Filtered
                                $container.quicksand($filteredItems,
                                function () { lightbox(); 
                                }
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

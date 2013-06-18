<?php echo theme_css('simpletabs.css', true); ?>	



<div class="row">

    <div class="fifteen columns" id="page-title" style="padding-left: 0px;"> 

        <div class="breadcrumbs"><!--<a href="<?php echo base_url();?>">Home</a>--> All Courses <span class="delim">/</span> <? echo $product->categories[0]->name;?><!--<a href="<?=base_url()?>cart/allcourses/">Courses</a>--> <span class="delim">/</span> <?=$product->name?>
        <span style="float: right; margin-top: -10px;"> 
                    <div class="sort-panel">  
                   <ul class="filter clearfix">
                   <li>
                   <a href="<?=base_url()?>cart/allcourses/" rel="nofollow" data-product_id="868" class="button" style=" width:180px;">  All Courses </a>
                    </li>
                   </ul>
                   </div>
                   </span>
        </div>

    </div>

    <div class="fifteen columns" id="page-title" style="padding-left: 0px;">
		 <div class="line"></div>
    </div>

</div>

<div class="row">

<div class="eleven columns" style="padding-left: 0px;">

    <div id="container">



        <div id="content" role="main">

        <?  if ($quantities != "")

                    { ?>

            <div class="woocommerce_message"><a href="<?php echo site_url('cart/view_cart');?>" class="button">View Cart →</a> Course successfully added to your cart.</div>

              <? }?>
              

            <div itemscope="" itemtype="http://schema.org/Product" id="product-855" class="post-855 product type-product status-publish hentry">

              
			  	<? if(isset($product->images)){ ?>
			    <div class="images"> <a itemprop="image" href="<?php echo base_url('uploads/images/full/'.$product->images);?>" class="zoom cboxElement" rel="thumbnails" title="<?=$product->name?>">
				
				<img src="<?php echo base_url('uploads/images/medium/'.$product->images);?>" alt="<?=$product->seo_title?>" >
				
				</a> 
				</div>
				<? } ?>
                <div class="summary">

                    <h1 itemprop="name" class="product_title entry-title"><?=$product->name?></h1>

                    <div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">

                        <p itemprop="price" class="price"><span class="amount"><?=format_currency($product->price)?></span></p>

                        <link itemprop="availability" href="http://schema.org/InStock">

                    </div>



                    <?php echo form_open('cart/add_to_cart', 'class="cart"');?>

                    <input type="hidden" name="cartkey" value="<?php echo $this->session->flashdata('cartkey');?>" />

                    <input type="hidden" name="id" value="<?php echo $product->id?>"/>

                    <div class="quantity buttons_added"><input type="button" value="-" class="minus"><input name="quantity" data-min="1" data-max="0" value="1" size="4" title="Qty" class="input-text qty text" maxlength="12"><input type="button" value="+" class="plus"></div>

                    <button type="submit" class="single_add_to_cart_button button alt">Add to cart</button>

                    </form>









                </div>

                <!-- .summary -->

                <div class="simpleTabs" style="padding-left: 0px;">

                    <ul class="simpleTabsNavigation">
                    

                        <li class="description_tab active"><a href="#tab-description">Description</a></li>

                       <!-- <li class="reviews_tab"><a href="#tab-reviews">Reviews (0)</a></li>-->

                        <? if(!empty($product_tabs)){

                                foreach($product_tabs as $tabs)

                                {

                                ?>

                                <li class="reviews_tab"><a href="#<?=str_replace(' ', '-', strtolower($tabs['tab_title']))?>"><?=$tabs['tab_title']?></a></li>



                                <?	}

                            } 



                        ?>

                    </ul>

                    <div  class="simpleTabsContent" id="tab-description">

                        <h2>Product Description</h2>

                        <p><?=$product->description?></p>

                    </div>

                    <div  class="simpleTabsContent" id="tab-reviews">



                    </div>

                    <? if(!empty($product_tabs)){

                            foreach($product_tabs as $tabs)

                            {

                            ?>			

                            <div  class="simpleTabsContent" id="<?php echo str_replace(' ', '-', strtolower($tabs['tab_title']))?>">

                                <h2>Product Description</h2>

                                <p><?=$tabs['tab_content']?></p>

                            </div>

                            <?	

                            }

                        }			  

                    ?>			

                </div>



                </div>

                <!-- #product-855 -->

                <div class="clear"></div>

            </div>

        </div>

    </div>

<div class="four columns">

        <section id="woocommerce_login-2" class="widget-1 widget-first widget widget_login">

            <div class="widget-inner">

                <h3>Customer Login</h3>

                <form method="post" action="<?=base_url()?>secure/login">

                    <p>

                        <label for="user_login">Username or email</label>

                        <input name="email" class="input-text" id="user_login" type="text">

                    </p>

                    <p>

                        <label for="user_pass">Password</label>

                        <input name="password" class="input-text" id="user_pass" type="password">

                    </p>

                    <p>

                        <input class="submitbutton" name="submitted" id="wp-submit" value="Login →" type="submit">

                        <a href="<?php echo site_url('secure/forgot_password')?>">Lost password?</a></p>

                    <div>

                        <!--<input name="redirect_to" class="redirect_to" value="" type="hidden">-->

                        <input name="testcookie" value="1" type="hidden">

                        <input name="woocommerce_login" value="1" type="hidden">

                        <input name="rememberme" value="forever" type="hidden">

                    </div>

                </form>

                <ul class="pagenav">

                </ul>

            </div>

        </section>

        <section id="shopping_cart-2" class="widget-2 widget widget_shopping_cart">

            <div class="widget-inner">

                <h3>Cart</h3>

                <!--mfunc woocommerce_mini_cart() -->

                

                <?  if ($this->go_cart->total_items()==0)

                    { ?>

                    <ul class="cart_list product_list_widget ">

                        <li class="empty">No products in the cart.</li>

                    </ul>

                <?   } else{  ?>

                

                   <ul class="cart_list product_list_widget ">    

                <?

                  

                   foreach ($this->go_cart->contents() as $cartkey=>$product)

                   {

                         $productName = $product['name'] ;

                         $price = $product['price'];

                         $qty = $product['quantity'] ;

                         $imgpath = $product['images'] ;



                  ?>



                    <li>

                        <a href="#">

							<? if(!empty($imgpath)){ ?>

                            <img width="200" height="200" src="<?=base_url('uploads/images/thumbnails/'.$imgpath)?>" class="attachment-shop_thumbnail wp-post-image" alt="746867-1">
							<? } ?>
                            <?=$productName?>

                        </a>





                        <span class="quantity"><?=$qty?> × $<span class="amount"><?=$price?></span></span>

                    </li>

                     <? }

                    

                    ?>

                </ul><!-- end product list -->

                <p class="total"><strong>Subtotal:</strong> <span class="amount"><?=$this->go_cart->subtotal()?></span></p>

                <p class="buttons">

                    <a href="<?php echo site_url('cart/view_cart');?>" class="button">View Cart →</a>

                    <a href="#" class="button checkout">Checkout →</a>

                </p>

                  <? }?>

                <!-- end product list -->

                <!--/mfunc-->

            </div>

        </section>

    </div>

</div>
<div class="row">

                <div class="line"></div>



                <!--- Related Products Starts ---->

                <?php if(!empty($product->related_products)):?>

                    <div class="related_products">

                    <div class="row">

                    <div class="span4">

                    <h2>Related Products</h2>

                    <ul class="thumbnails">	

                    <?php foreach($product->related_products as $relate):?>

                        <li class="span2 product">

                        <?php

                            $photo	= theme_img('no_picture.png', lang('no_image_available'));

                            $relate->images	= array_values((array)json_decode($relate->images));



                            if(!empty($relate->images[0]))

                            {

                                $primary	= $relate->images[0];

                                $photo	= '<img src="'.base_url('uploads/images/small/'.$primary).'" alt="'.$relate->seo_title.'" style="width: 270px; height: 200px;"/>';

                            }

                        ?>

                        <a  href="<?php  echo site_url(implode('/', $base_url).'/'.$relate->slug); ?>">

                        <?php echo $photo; ?>

                        </a>

                        <h5 style="margin-top:5px;" align="center"><a href="<?php echo site_url($relate->slug); ?>"><?php echo $relate->name;?></a></h5>                   

                        </li>

                        <?php endforeach;?>

                    </ul>

                    </div>

                    </div>

                    </div>

                    <?php endif;?>



                <!--- Related Products Ends ---->

</div>
<?php echo theme_css('simpletabs.css', true); ?>	

<div class="row">

    <div class="fifteen columns" id="top-social">

        <div class="soc-wrap">

            <div style="width: 0px; overflow: hidden;" class="soc-icons"> <a class="rss" href="http://theme.crumina.net/onetouch/feed=rss2" data-original-title="RSS feed">RSS</a> <a href="http://twitter.com/" class="tw" data-original-title="Twitter">Twitter</a><a href="http://facebook.com/" class="fb" data-original-title="Facebook">Facebook</a><a href="http://flickr.com/" class="fl" data-original-title="Flickr">Flickr</a><a href="http://vimeo.com/" class="vi" data-original-title="Vimeo">Vimeo</a><a href="http://dribble.com/" class="dr" data-original-title="Dribble">Dribble</a><a href="http://lastfm.com/" class="lf" data-original-title="Last FM">Last FM</a><a href="http://youtube.com/" class="yt" data-original-title="YouTube">YouTube</a><a href="https://accountservices.passport.net/" class="ms" data-original-title="Microsoft ID">Microsoft ID</a><a href="http://linkedin.com/" class="li" data-original-title="LinkedIN">LinkedIN</a><a href="https://accounts.google.com/" class="gp" data-original-title="Google +">Google +</a><a href="http://picasa.com/" class="pi" data-original-title="Picasa">Picasa</a><a href="http://pinterest.com/" class="pt" data-original-title="Pinterest">Pinterest</a><a href="http://wordpress.com/" class="wp" data-original-title="Wordpress">Wordpress</a><a href="http://dropbox.com/" class="db" data-original-title="Dropbox">Dropbox</a> </div>

        </div>

    </div>

</div>

<div class="row">

    <div class="fifteen columns" id="page-title"> <a class="back" href="javascript:history.back()"></a>

        <div class="breadcrumbs"><a href="<?php echo base_url();?>">Home</a> <span class="delim">/</span> <a href="<?=base_url()?>cart/allcourses/">Courses</a> <span class="delim">/</span> <?=$product->name?></div>

    </div>

    <div class="fifteen columns">

        <div class="line"></div>

    </div>

</div>

<div class="row">

<div class="eleven columns">

    <div id="container">



        <div id="content" role="main">

        <?  if ($this->go_cart->total_items()!=0)

                    { ?>

            <div class="woocommerce_message"><a href="<?php echo site_url('cart/view_cart');?>" class="button">View Cart →</a> Course successfully added to your cart.</div>

              <?}?>

            <div itemscope="" itemtype="http://schema.org/Product" id="product-855" class="post-855 product type-product status-publish hentry">

              
			  	<? if(isset($product->images[0])){ ?>
			    <div class="images"> <a itemprop="image" href="<?php echo base_url('uploads/images/full/'.$product->images[0]);?>" class="zoom cboxElement" rel="thumbnails" title="<?=$product->name?>">
				
				<img src="<?php echo base_url('uploads/images/medium/'.$product->images[0]);?>" alt="<?=$product->seo_title?>" >
				
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

                <div class="simpleTabs">

                    <ul class="simpleTabsNavigation">

                        <li class="description_tab active"><a href="#tab-description">Description</a></li>

                        <li class="reviews_tab"><a href="#tab-reviews">Reviews (0)</a></li>

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

                            <div  class="simpleTabsContent" id="<?=str_replace(' ', '-', strtolower($tabs['tab_title']))?>">

                                <h2>Product Description</h2>

                                <p><?=$tabs['tab_content']?></p>

                            </div>

                            <?	

                            }

                        }			  

                    ?>			

                </div>

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

                                $photo	= '<img src="'.base_url('uploads/images/small/'.$primary).'" alt="'.$relate->seo_title.'"/>';

                            }

                        ?>

                        <a  href="<?php  echo site_url(implode('/', $base_url).'/'.$relate->slug); ?>">

                        <?php echo $photo; ?>

                        </a>

                        <h5 style="margin-top:5px;"><a href="<?php echo site_url($relate->slug); ?>"><?php echo $relate->name;?></a></h5>                   

                        </li>

                        <?php endforeach;?>

                    </ul>

                    </div>

                    </div>

                    </div>

                    <?php endif;?>



                <!--- Related Products Ends ---->



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

                <form method="post">

                    <p>

                        <label for="user_login">Username or email</label>

                        <input name="log" class="input-text" id="user_login" type="text">

                    </p>

                    <p>

                        <label for="user_pass">Password</label>

                        <input name="pwd" class="input-text" id="user_pass" type="password">

                    </p>

                    <p>

                        <input class="submitbutton" name="wp-submit" id="wp-submit" value="Login →" type="submit">

                        <a href="">Lost password?</a></p>

                    <div>

                        <input name="redirect_to" class="redirect_to" value="" type="hidden">

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
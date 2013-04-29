<div class="row">
  <div class="fifteen columns" id="top-social">
    <div class="soc-wrap">
      <div style="width: 0px; overflow: hidden;" class="soc-icons"> <a class="rss" href="http://theme.crumina.net/onetouch/feed=rss2" data-original-title="RSS feed">RSS</a> <a href="http://twitter.com/" class="tw" data-original-title="Twitter">Twitter</a><a href="http://facebook.com/" class="fb" data-original-title="Facebook">Facebook</a><a href="http://flickr.com/" class="fl" data-original-title="Flickr">Flickr</a><a href="http://vimeo.com/" class="vi" data-original-title="Vimeo">Vimeo</a><a href="http://dribble.com/" class="dr" data-original-title="Dribble">Dribble</a><a href="http://lastfm.com/" class="lf" data-original-title="Last FM">Last FM</a><a href="http://youtube.com/" class="yt" data-original-title="YouTube">YouTube</a><a href="https://accountservices.passport.net/" class="ms" data-original-title="Microsoft ID">Microsoft ID</a><a href="http://linkedin.com/" class="li" data-original-title="LinkedIN">LinkedIN</a><a href="https://accounts.google.com/" class="gp" data-original-title="Google +">Google +</a><a href="http://picasa.com/" class="pi" data-original-title="Picasa">Picasa</a><a href="http://pinterest.com/" class="pt" data-original-title="Pinterest">Pinterest</a><a href="http://wordpress.com/" class="wp" data-original-title="Wordpress">Wordpress</a><a href="http://dropbox.com/" class="db" data-original-title="Dropbox">Dropbox</a> </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="fifteen columns" id="page-title"> <a class="back" href="javascript:history.back()"></a>
    <div class="breadcrumbs"><a href="http://theme.crumina.net/onetouch">Home</a> <span class="delim">/</span> <a href="http://theme.crumina.net/onetouch/shop/">Product</a> <span class="delim">/</span> Backpack, IUTER 2</div>
  </div>
  <div class="fifteen columns">
    <div class="line"></div>
  </div>
</div>
<div class="row">
  <div class="eleven columns">
    <div id="container">
      <div id="content" role="main">
        <div itemscope="" itemtype="http://schema.org/Product" id="product-855" class="post-855 product type-product status-publish hentry">
          <div class="images"> <a itemprop="image" href="<?php echo base_url('uploads/images/full/'.$product->images[0]);?>" class="zoom cboxElement" rel="thumbnails" title="<?=$product->name?>"><img src="<?php echo base_url('uploads/images/medium/'.$product->images[0]);?>" alt="<?=$product->seo_title?>" ></a> </div>
          <div class="summary">
            <h1 itemprop="name" class="product_title entry-title"><?=$product->name?></h1>
            <div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
              <p itemprop="price" class="price"><span class="amount"><?=format_currency($product->price)?></span></p>
              <link itemprop="availability" href="http://schema.org/InStock">
            </div>
            <form action="/onetouch/shop/backpack-iuter-2/?add-to-cart=855" class="cart" method="post" enctype="multipart/form-data">
              <button type="submit" class="single_add_to_cart_button button alt">Enroll Now</button>
            </form>
          </div>
          <!-- .summary -->
          <div class="woocommerce_tabs">
            <ul class="tabs">
              <li class="description_tab active"><a href="#tab-description">Description</a></li>
              <li class="reviews_tab"><a href="#tab-reviews">Reviews (0)</a></li>
            </ul>
            <div style="display: block;" class="panel entry-content" id="tab-description">
              <h2>Product Description</h2>
              <p><?=$product->description?></p>
            </div>
            <div style="display: none;" class="panel entry-content" id="tab-reviews">
              <div id="reviews">
                <div id="comments">
                  <h2>Reviews</h2>
                  <p>There are no reviews yet, would you like to <a href="#review_form" class="inline show_review_form">submit yours</a>?</p>
                </div>
                <div style="display: none;" id="review_form_wrapper">
                  <div id="review_form">
                    <div id="respond">
                      <h3 id="reply-title">Be the first to review “Backpack, IUTER 2” <small><a rel="nofollow" id="cancel-comment-reply-link" href="http://theme.crumina.net/onetouch/shop/backpack-iuter-2/#respond" style="display:none;">Cancel reply</a></small></h3>
                      <form action="http://theme.crumina.net/onetouch/wp-comments-post.php" method="post" id="commentform">
                        <p class="comment-form-author">
                          <label for="author">Name</label>
                          <span class="required">*</span>
                          <input id="author" name="author" size="30" aria-required="true" type="text">
                        </p>
                        <p class="comment-form-email">
                          <label for="email">Email</label>
                          <span class="required">*</span>
                          <input id="email" name="email" size="30" aria-required="true" type="text">
                        </p>
                        <p class="comment-form-rating">
                          <label for="rating">Rating</label>
                        <p class="stars"><span><a class="star-1" href="#">1</a><a class="star-2" href="#">2</a><a class="star-3" href="#">3</a><a class="star-4" href="#">4</a><a class="star-5" href="#">5</a></span></p>
                        <select style="display: none;" name="rating" id="rating">
                          <option selected="selected" value="">Rate…</option>
                          <option value="5">Perfect</option>
                          <option value="4">Good</option>
                          <option value="3">Average</option>
                          <option value="2">Not that bad</option>
                          <option value="1">Very Poor</option>
                        </select>
                        </p>
                        <p class="comment-form-comment">
                          <label for="comment">Your Review</label>
                          <textarea id="comment" name="comment" cols="45" rows="8" aria-required="true"></textarea>
                        </p>
                        <input id="_n" name="_n" value="5f994de06d" type="hidden">
                        <input name="_wp_http_referer" value="/onetouch/shop/backpack-iuter-2/" type="hidden">
                        <p class="form-submit">
                          <input name="submit" id="submit" value="Submit Review" type="submit">
                          <input name="comment_post_ID" value="855" id="comment_post_ID" type="hidden">
                          <input name="comment_parent" id="comment_parent" value="0" type="hidden">
                        </p>
                      </form>
                    </div>
                    <!-- #respond -->
                  </div>
                </div>
                <div class="clear"></div>
              </div>
            </div>
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
            <a href="http://theme.crumina.net/onetouch/wp-login.php?action=lostpassword">Lost password?</a></p>
          <div>
            <input name="redirect_to" class="redirect_to" value="http://theme.crumina.net/onetouch/my-account/" type="hidden">
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
        <ul class="cart_list product_list_widget ">
          <li class="empty">No products in the cart.</li>
        </ul>
        <!-- end product list -->
        <!--/mfunc-->
      </div>
    </section>
  </div>
</div>

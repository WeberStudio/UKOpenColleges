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
          <div class="row">
			<div class="span8">
				<div class="product-cart-form">
					<?php echo form_open('cart/add_to_cart', 'class="form-horizontal"');?>
					<input type="hidden" name="cartkey" value="<?php echo $this->session->flashdata('cartkey');?>" />
					<input type="hidden" name="id" value="<?php echo $product->id?>"/>
					<fieldset>
					<?php if(count($options) > 0): ?>
						<?php foreach($options as $option):
							$required	= '';
							if($option->required)
							{
								$required = ' <p class="help-block">Required</p>';
							}
							?>
							<div class="control-group">
								<label class="control-label"><?php //echo $option->name;?></label>
								<?php
								/*
								this is where we generate the options and either use default values, or previously posted variables
								that we either returned for errors, or in some other releases of Go Cart the user may be editing
								and entry in their cart.
								*/

								//if we're dealing with a textfield or text area, grab the option value and store it in value
								if($option->type == 'checklist')
								{
									$value	= array();
									if($posted_options && isset($posted_options[$option->id]))
									{
										$value	= $posted_options[$option->id];
									}
								}
								else
								{
									if(isset($option->values[0]))
									{
										$value	= $option->values[0]->value;
										if($posted_options && isset($posted_options[$option->id]))
										{
											$value	= $posted_options[$option->id];
										}
									}
									else
									{
										$value = false;
									}
								}

								if($option->type == 'textfield'):?>
									<div class="controls">
										<input type="text" name="option[<?php echo $option->id;?>]" value="<?php echo $value;?>" class="span4"/>
										<?php echo $required;?>
									</div>
								<?php elseif($option->type == 'textarea'):?>
									<div class="controls">
										<textarea class="span4" name="option[<?php echo $option->id;?>]"><?php echo $value;?></textarea>
										<?php echo $required;?>
									</div>
								<?php elseif($option->type == 'droplist'):?>
									<div class="controls">
										<select name="option[<?php echo $option->id;?>]">
											<option value=""><?php echo lang('choose_option');?></option>

										<?php foreach ($option->values as $values):
											$selected	= '';
											if($value == $values->id)
											{
												$selected	= ' selected="selected"';
											}?>

											<option<?php echo $selected;?> value="<?php echo $values->id;?>">
												<?php echo($values->price != 0)?'('.format_currency($values->price).') ':''; echo $values->name;?>
											</option>

										<?php endforeach;?>
										</select>
										<?php echo $required;?>
									</div>
								<?php elseif($option->type == 'radiolist'):?>
									<div class="controls">
										<?php foreach ($option->values as $values):

											$checked = '';
											if($value == $values->id)
											{
												$checked = ' checked="checked"';
											}?>
											<label class="radio">
												<input<?php echo $checked;?> type="radio" name="option[<?php echo $option->id;?>]" value="<?php echo $values->id;?>"/>
												<?php echo $option->name;?> <?php echo($values->price != 0)?'('.format_currency($values->price).') ':''; echo $values->name;?>
											</label>
										<?php endforeach;?>
										<?php echo $required;?>
									</div>
								<?php elseif($option->type == 'checklist'):?>
									<div class="controls">
										<?php foreach ($option->values as $values):

											$checked = '';
											if(in_array($values->id, $value))
											{
												$checked = ' checked="checked"';
											}?>
											<label class="checkbox">
												<input<?php echo $checked;?> type="checkbox" name="option[<?php echo $option->id;?>][]" value="<?php echo $values->id;?>"/>
												<?php echo($values->price != 0)?'('.format_currency($values->price).') ':''; echo $values->name;?>
											</label>
											
										<?php endforeach; ?>
									</div>
									<?php echo $required;?>
								<?php endif;?>
								</div>
						<?php endforeach;?>
					<?php endif;?>
					
					<div class="control-group">
						<label class="control-label"><?php echo lang('quantity') ?></label>
						<div class="controls">
							<?php if(!config_item('inventory_enabled') || config_item('allow_os_purchase') || !(bool)$product->track_stock || $product->quantity > 0) : ?>
								<?php if(!$product->fixed_quantity) : ?>
									<input class="input-text" type="text" name="quantity" value=""/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<?php endif; ?>
								<button class="single_add_to_cart_button button alt" type="submit" value="submit"><i class="icon-shopping-cart icon-white"></i> <?php echo lang('form_enrol_now');?></button>
							<?php endif;?>
						</div>
					</div>
					
					</fieldset>
					</form>
				</div>
	
			</div>
		</div>
            
            
            
           <!-- <form action="" class="cart" method="post" enctype="multipart/form-data">
              <button type="submit" class="single_add_to_cart_button button alt">Enroll Now</button>
            </form>-->
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
				  <!--<h2>Product Description</h2>-->
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
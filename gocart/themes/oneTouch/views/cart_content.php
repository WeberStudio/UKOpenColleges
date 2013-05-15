<?php if ($this->go_cart->total_items()==0):?>
	<div class="alert alert-info">
		<a class="close" data-dismiss="alert">×</a>
		<?php echo lang('empty_view_cart');?>
	</div>
<?php else: ?>
	
	<div class="page-header">
		<h2><?php echo lang('your_cart');?></h2>
	</div>
	<?php echo form_open('cart/update_cart', array('id'=>'update_cart_form'));?>
	
	<?php include('checkout/summary.php');?>
	
	
	<div class="row">
		<div class="span5">
			<label><?php echo lang('coupon_label');?></label>
			<input id="small_text" type="text" name="coupon_code" class="" style="margin:0px;">
			<input class="add_to_cart_button button product_type_simple" type="submit" value="<?php echo lang('apply_coupon');?>"/>
			
			<?php if($gift_cards_enabled):?>
				<label style="margin-top:15px;"><?php echo lang('gift_card_label');?></label>
				<input type="text" name="gc_code" class="span3" style="margin:0px;">
				<input class="add_to_cart_button button product_type_simple"  type="submit" value="<?php echo lang('apply_gift_card');?>"/>
			<?php endif;?>
		</div>
		
		<div class="span7" style="text-align:right; width:1000px;">
				<input id="redirect_path" type="hidden" name="redirect" value=""/>
	
				<?php if(!$this->Customer_model->is_logged_in(false,false)): ?>
					<input class="add_to_cart_button button product_type_simple" type="button" onclick='window.location="http://localhost/UKOpenColleges/secure/login";' value="<?php echo lang('login');?>"/>
					<input class="add_to_cart_button button product_type_simple" type="button" onclick='window.location="http://localhost/UKOpenColleges/secure/register";' value="<?php echo lang('register_now');?>"/>
				<?php endif; ?>
					<input class="add_to_cart_button button product_type_simple" type="submit" value="<?php echo lang('form_update_cart');?>"/>
					
			<?php if ($this->Customer_model->is_logged_in(false,false) || !$this->config->item('require_login')): ?>
				<input class="single_add_to_cart_button button alt" type="button"  onclick='window.location="http://localhost/UKOpenColleges/checkout";' value="<?php echo lang('form_checkout');?>"/>
			<?php endif; ?>
			
		</div>
	</div>

</form>
<?php endif; ?>
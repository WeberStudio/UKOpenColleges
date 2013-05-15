<?php include('mainHeader.php'); ?>
<body class="home page page-template page-template-page-no_top-php theme-onetouch wpb-js-composer js-comp-ver-3.4.12 vc_responsive">
<a href="#"><img id="nominee" src="<?=theme_img("custom-slider-img/cssreel_nomineetag_yellow.png")?>" alt="" /></a>
<div id="body-wrapper" >
<div id="body-wrapper-padding">
<?php include('header.php'); ?>
<? //Content Area Start ?>
 
<?php if($this->Customer_model->is_logged_in(false, false)):?>
 <?php else: ?>
<script>
window.location="http://localhost/UKOpenColleges/secure/login";
</script>
<?php endif; ?>
<style type="text/css">
	.placeholder {
		display:none;
	}
</style>
<div class="page-header">
	<h2><?php echo lang('form_checkout');?></h2>
</div>
<div class="line"> </div>
<?php if (validation_errors()):?>
	<div class="alert alert-error">
		<a class="close" data-dismiss="alert">�</a>
		<?php echo validation_errors();?>
	</div>
<?php endif;?>

<script type="text/javascript">
	$(document).ready(function(){
		
		//if we support placeholder text, remove all the labels
		if(!supports_placeholder())
		{
			$('.placeholder').show();
		}
		
	});
	
	function supports_placeholder()
	{
		return 'placeholder' in document.createElement('input');
	}
</script>



<script type="text/javascript">
$(document).ready(function() {
	$('#country_id').change(function(){
		populate_zone_menu();
	});	

});
// context is ship or bill
function populate_zone_menu(value)
{
	$.post('<?php echo site_url('locations/get_zone_menu');?>',{id:$('#country_id').val()}, function(data) {
		$('#zone_id').html(data);
	});
}
</script>
<?php /* Only show this javascript if the user is logged in */ ?>
<?php if($this->Customer_model->is_logged_in(false, false)) : ?>
<script type="text/javascript">	
	<?php
	$add_list = array();
	foreach($customer_addresses as $row) {
		// build a new array
		$add_list[$row['id']] = $row['field_data'];
	}
	$add_list = json_encode($add_list);
	echo "eval(addresses=$add_list);";
	?>
		
	function populate_address(address_id)
	{
		if(address_id == '')
		{
			return;
		}
		
		// - populate the fields
		$.each(addresses[address_id], function(key, value){
			
			$('.address[name='+key+']').val(value);

			// repopulate the zone menu and set the right value if we change the country
			if(key=='zone_id')
			{
				zone_id = value;
			}
		});
		
		// repopulate the zone list, set the right value, then copy all to billing
		$.post('<?php echo site_url('locations/get_zone_menu');?>',{id:$('#country_id').val()}, function(data) {
			$('#zone_id').html(data);
			$('#zone_id').val(zone_id);
		});		
	}
	
</script>
<?php endif;?>

<?php
$countries = $this->Location_model->get_countries_menu();

if(!empty($customer[$address_form_prefix.'_address']['country_id']))
{
	$zone_menu	= $this->Location_model->get_zones_menu($customer[$address_form_prefix.'_address']['country_id']);
}
else
{
	$zone_menu = array(''=>'')+$this->Location_model->get_zones_menu(array_shift(array_keys($countries)));
}

//form elements

//$company	= array('placeholder'=>lang('address_company'),'class'=>'address span8', 'name'=>'company', 'value'=> set_value('company', @$customer[$address_form_prefix.'_address']['company']));

/*$address1	= array('placeholder'=>lang('address1'), 'class'=>'address span8', 'name'=>'address1', 'value'=> set_value('address1', @$customer[$address_form_prefix.'_address']['address1']));
$address2	= array('placeholder'=>lang('address2'), 'class'=>'address span8', 'name'=>'address2', 'value'=>  set_value('address2', @$customer[$address_form_prefix.'_address']['address2']));
$first		= array('placeholder'=>lang('address_firstname'), 'class'=>'address span4', 'name'=>'firstname', 'value'=>  set_value('firstname', @$customer[$address_form_prefix.'_address']['firstname']));
$last		= array('placeholder'=>lang('address_lastname'), 'class'=>'address span4', 'name'=>'lastname', 'value'=>  set_value('lastname', @$customer[$address_form_prefix.'_address']['lastname']));
$email		= array('placeholder'=>lang('address_email'), 'class'=>'address span4', 'name'=>'email', 'value'=> set_value('email', @$customer[$address_form_prefix.'_address']['email']));
$phone		= array('placeholder'=>lang('address_phone'), 'class'=>'address span4', 'name'=>'phone', 'value'=> set_value('phone', @$customer[$address_form_prefix.'_address']['phone']));
$city		= array('placeholder'=>lang('address_city'), 'class'=>'address span3', 'name'=>'city', 'value'=> set_value('city', @$customer[$address_form_prefix.'_address']['city']));
$zip		= array('placeholder'=>lang('address_postcode'), 'maxlength'=>'10', 'class'=>'address span2', 'name'=>'zip', 'value'=> set_value('zip', @$customer[$address_form_prefix.'_address']['zip']));
*/
$company	= array('id'=>'company', 'class'=>'span4', 'name'=>'company', 'value'=> set_value('company', $customer['company']));
$first		= array('id'=>'firstname', 'class'=>'span2', 'name'=>'firstname', 'value'=> set_value('firstname', $customer['firstname']));
$f_city		= array('id'=>'f_city', 'class'=>'span12', 'name'=>'city', 'value'=>set_value('city',$customer['city']));
$f_zip		= array('id'=>'f_zip', 'maxlength'=>'10', 'class'=>'span12', 'name'=>'zip', 'value'=> set_value('zip', $customer['post_code']));
$f_address1	= array('id'=>'f_address1', 'class'=>'span12', 'name'=>'address1', 'value'=>set_value('address1', $customer['address_street']));
$f_address2	= array('id'=>'f_address2', 'class'=>'span12', 'name'=>'address2', 'value'=> set_value('address2', $customer['address_line']));
$last		= array('id'=>'lastname', 'class'=>'span2', 'name'=>'lastname', 'value'=> set_value('lastname', $customer['lastname']));
$email		= array('id'=>'email', 'class'=>'span2', 'name'=>'email', 'value'=> set_value('email', $customer['email']));
$phone		= array('id'=>'phone', 'class'=>'span2', 'name'=>'phone', 'value'=> set_value('phone', $customer['phone']));

?>
	
	<?php
	//post to the correct place.
	echo ($address_form_prefix == 'bill')?form_open('checkout/step_1'):form_open('checkout/shipping_address');?>
		<div class="row" align="center" style="width: 500px; margin-left: 262px;">
			<?php // Address form ?>
			<div class="span8 offset2">
				<div class="row">
					<div class="span4">
						<h2 style="margin:0px;">
							<?php echo ($address_form_prefix == 'bill')?lang('address'):lang('shipping_address');?>
						</h2>
					</div>
					
				</div>
				
				<div class="row">
					<div class="span8">
						<label class="placeholder"><?php echo lang('address_company');?></label>
						<?php echo form_input($company);?>
					</div>
				</div>
				<div class="row">
					<div class="span4">
						<label class="placeholder"><?php echo lang('address_firstname');?><b class="r"> *</b></label>
						<?php echo form_input($first);?>
					</div>
					<div class="span4">
						<label class="placeholder"><?php echo lang('address_lastname');?><b class="r"> *</b></label>
						<?php echo form_input($last);?>
					</div>
				</div>
				<div class="row">
					<div class="span4">
						<label class="placeholder"><?php echo lang('address_email');?><b class="r"> *</b></label>
						<?php echo form_input($email);?>
					</div>

					<div class="span4">
						<label class="placeholder"><?php echo lang('address_phone');?><b class="r"> *</b></label>
						<?php echo form_input($phone);?>
					</div>
				</div>

				<div class="row">
					<div class="span8">
						<label class="placeholder"><?php echo lang('address_country');?><b class="r"> *</b></label>
						<?php echo form_dropdown('country_id',$countries, @$customer[$address_form_prefix.'_address']['country_id'], 'id="country_id" class="address span8"');?>
					</div>
				</div>

				<div class="row">
					<div class="span8">
						<label class="placeholder"><?php echo lang('address1');?><b class="r"> *</b></label>
						<?php echo form_input($f_address1);?>
					</div>
				</div>
				
				<div class="row">
					<div class="span8">
						<label class="placeholder"><?php echo lang('address2');?></label>
						<?php echo form_input($f_address2);?>
					</div>
				</div>

				<div class="row">
					<div class="span3">
						<label class="placeholder"><?php echo lang('address_city');?><b class="r"> *</b></label>
						<?php echo form_input($f_city);?>
					</div>
					<div class="span3">
						<label class="placeholder"><?php echo lang('address_state');?><b class="r"> *</b></label>
						<?php echo form_dropdown('zone_id',$zone_menu, @$customer[$address_form_prefix.'_address']['zone_id'], 'id="zone_id" class="address span3"');?>
					</div>
					<div class="span2">
						<label class="placeholder"><?php echo lang('address_postcode');?><b class="r"> *</b></label>
						<?php echo form_input($f_zip);?>
					</div>
				</div>
			
				<div class="row">
					<div class="span8">
						<input class="btn btn-block btn-large btn-primary" type="submit" value="<?php echo lang('form_continue');?>"/>
					</div>
				</div>
			</div>
		</div>
	</form>

<?php if($this->Customer_model->is_logged_in(false, false)) : ?>

<div class="modal hide" id="address_manager">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal">�</button>
		<h3><?php echo lang('your_addresses');?></h3>
	</div>
	<div class="modal-body">
		<p>
			<table class="table table-striped">
			<?php
			$c = 1;
			foreach($customer_addresses as $a):?>
				<tr>
					<td>
						<?php
						$b	= $a['field_data'];
						echo nl2br(format_address($b));
						?>
					</td>
					<td style="width:100px;"><input type="button" class="btn btn-primary choose_address pull-right" onClick="populate_address(<?php echo $a['id'];?>);" data-dismiss="modal" value="<?php echo lang('form_choose');?>" /></td>
				</tr>
			<?php endforeach;?>
			</table>
		</p>
	</div>
	<div class="modal-footer">
		<a href="#" class="btn" data-dismiss="modal">Close</a>
	</div>
</div>
<?php endif;?>
</div>
</div>
<?php include_once('footer.php'); ?>
</body>
</html>
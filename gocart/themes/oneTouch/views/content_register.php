

<?php


$company	= array('id'=>'bill_company', 'class'=>'span6', 'name'=>'company', 'value'=> set_value('company'));

$first		= array('id'=>'bill_firstname', 'class'=>'span3', 'name'=>'firstname', 'value'=> set_value('firstname'));
$last		= array('id'=>'bill_lastname', 'class'=>'span3', 'name'=>'lastname', 'value'=> set_value('lastname'));
$email		= array('id'=>'bill_email', 'class'=>'span3', 'name'=>'email', 'value'=>set_value('email'));
$phone		= array('id'=>'bill_phone', 'class'=>'span3', 'name'=>'phone', 'value'=> set_value('phone'));
$f_city		= array('id'=>'f_city', 'class'=>'span12', 'name'=>'city', 'value'=>set_value('city',$city));
$f_zip		= array('id'=>'f_zip', 'maxlength'=>'10', 'class'=>'span12', 'name'=>'zip', 'value'=> set_value('zip',$zip));
$f_address1	= array('id'=>'f_address1', 'class'=>'span12', 'name'=>'address1', 'value'=>set_value('address1',$address1));
$f_address2	= array('id'=>'f_address2', 'class'=>'span12', 'name'=>'address2', 'value'=> set_value('address2',$address2));
$gender_m 	= array('id'=>'gender_m', 'class'=>'','name'=>'gender', 'value'=>'male' );
$gender_f 	= array('id'=>'gender_f', 'class'=>'', 'name'=>'gender', 'value'=>'female' );
?>
    <h1 class="page-title" style="padding: -9px;">
	<a class="all" href="javascript:void(0)">you can Rgister here</a>
	</h1>
    <div class="line"> </div>
    
    <div class="four columns" style="left:25%; width: 625px;">
    <section id="woocommerce_login-2" class="widget-1 widget-first widget widget_login">
      <div class="span6 offset3">
		<div class="page-header">
			<h1><?php echo lang('form_register');?></h1>
		</div>
		<?php echo form_open('secure/register'); ?>
			<input type="hidden" name="submitted" value="submitted" />
			<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />

			<fieldset>
            <div class="row">
                <div class="span6">
                <?php echo lang('gender_m');?>
                <?php echo form_radio ($gender_m);?>
                 <?php echo lang('gender_f');?>
                <?php echo form_radio ($gender_f);?>
                </div>
            </div>
				<div class="row">
					<div class="span6">
						<label for="company"><?php echo lang('account_company');?></label>
						<?php echo form_input($company);?>
					</div>
				</div>
				<div class="row">	
					<div class="span3">
						<label for="account_firstname"><?php echo lang('account_firstname');?></label>
						<?php echo form_input($first);?>
					</div>
				
					<div class="span3">
						<label for="account_lastname"><?php echo lang('account_lastname');?></label>
						<?php echo form_input($last);?>
					</div>
				</div>
                <div class="span12">
				<label><?php echo lang('address_country');?></label>
				<?php echo form_dropdown('country_id', $countries_menu, set_value('country_id', $country_id), 'id="f_country_id" class="span12"');?>
			</div>
                <div class="row">	
					<div class="span3">
						<label><?php echo lang('address');?></label>
						<?php echo form_input($f_address1);?>
					</div>
					<div class="span3">
						 <?php echo form_input($f_address2);?>
					</div>
				</div>
                <div class="row">	
					<div class="span3">
						<label for="account_firstname"><?php echo lang('address_city');?></label>
						<?php echo form_input($f_city);?>
					</div>
				</div>
				<div class="span6">
				<label><?php echo lang('address_state');?></label>
				<?php echo form_dropdown('zone_id', $zones_menu, set_value('zone_id', $zone_id), 'id="f_zone_id" class="span12"');?>
				</div>
                <div class="row">
                    <div class="span3">
                        <label><?php echo lang('address_postcode');?></label>
                        <?php echo form_input($f_zip);?>
                    </div>
                </div>
				<div class="row">
					<div class="span3">
						<label for="account_phone"><?php echo lang('account_phone');?></label>
						<?php echo form_input($phone);?>
					</div>
				</div>
			
				<div class="row">
					<div class="span7">
						<label class="checkbox">
							<input type="checkbox" name="email_subscribe" value="1" <?php echo set_radio('email_subscribe', '1', TRUE); ?>/> <?php echo lang('account_newsletter_subscribe');?>
						</label>
					</div>
				</div>
                
				<div class="row">
					<div class="span3">
						<label for="account_email"><?php echo lang('account_email');?></label>
						<?php echo form_input($email);?>
					</div>
                </div>
				<div class="row">	
					<div class="span3">
						<label for="account_password"><?php echo lang('account_password');?></label>
						<input type="password" name="password" value="" class="span3"/>
					</div>

					<div class="span3">
						<label for="account_confirm"><?php echo lang('account_confirm');?></label>
						<input type="password" name="confirm" value="" class="span3"/>
					</div>
				</div>
				
				<input type="submit" value="<?php echo lang('form_register');?>" class="btn btn-primary" style="height: 34px; width: 74px;" />
			</fieldset>
		</form>
	
		
	</div>
    </section>
    <section id="shopping_cart-2" class="widget-2 widget widget_shopping_cart">
      
    </section>
  </div>
  <script type="text/javascript">
$(function(){
	$('#f_country_id').change(function(){
			$.post('<?php echo site_url('locations/get_zone_menu');?>',{id:$('#f_country_id').val()}, function(data) {
			  $('#f_zone_id').html(data);
			});
		});
});

function save_address()
{
	$.post("<?php echo site_url('secure/register');?>/"+$('#f_id').val(), {	company: $('#f_company').val(),
																				firstname: $('#f_firstname').val(),
																				lastname: $('#f_lastname').val(),
																				email: $('#f_email').val(),
																				phone: $('#f_phone').val(),
																				address1: $('#f_address1').val(),
																				address2: $('#f_address2').val(),
																				city: $('#f_city').val(),
																				country_id: $('#f_country_id').val(),
																				zone_id: $('#f_zone_id').val(),
																				zip: $('#f_zip').val()
																				},
		function(data){
			if(data == 1)
			{
				window.location = "<?php echo site_url('secure/register');?>";
			}
			else
			{
				$('#form-error').html(data).show();
			}
		});
}
</script>
 
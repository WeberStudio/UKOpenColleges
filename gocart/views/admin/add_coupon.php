<script>
$(document).ready(function(){
	$("#gc_tabs").tabs();

	if($('#gc_coupon_appliesto_fields').val() == '1')
	{
		$('#gc_coupon_products').hide();
	}
	
	$('#gc_coupon_appliesto_fields').bind('change keyup', function(){
		if($(this).val() == 0)
		{
			$('#gc_coupon_products').show();
		}
		else
		{
			$('#gc_coupon_products').hide();
		}
	});
});

</script>
<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); 
?>
<?php 
            $company 	= "";
            $firstname	= "";
            $lastname	= "";
            $email="";
            $phone="";
            $email_subscribe="";
            $active="";
            $group_id="";
            $group_list="";
            $zones_menu="";
            $zone_id="";
            $zones_menu="";
            $zone_id="";
            $description="";
         ?>
<div id="main" style="min-height:1000px">
<div class="container">
<? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
<div id="main_container">
  <div class="row-fluid">
    <div class="span12">
      <div class="box paint color_18">
        <div class="title">
          <h4> <i class=" icon-bar-chart"></i>Add Coupon </h4>
        
        <!-- End .title -->
        <div class="content">
		
		
		<div class="tab-pane fade in active" id="form">
          <?php //echo form_open($this->config->item('admin_folder').'/customers/form/'.$id, array('class' => '', 'id' => 'validateForm')); ?>

 
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('firstname');?>
              Coupon Code<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'firstname', 'value'=>set_value('firstname', $firstname), 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('lastname');?>
              Max Uses<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'lastname', 'value'=>set_value('lastname', $lastname), 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('phone');?>
              Limit Per Order<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'phone', 'value'=>set_value('phone', $phone), 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field"><?php echo lang('email');?> E-Mail<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'email', 'value'=>set_value('email', $email), 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>
		  <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field"> Enable On<span class="help-block"></span></label>
            <div class="controls span7">
              <input type="text" name="" value="" id="datepicker1" class="span12">
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field"> Disable On<span class="help-block"></span></label>
            <div class="controls span7">
              <input type="text" name="" value="" id="datepicker2" class="span12">
            </div>
          </div>
           <div class="control-group row-fluid">
            <label class="control-label span1"> Coupon Type<?php echo lang('group');?><span class="help-block"></span></label>
            <div class="controls span7">
              <select class="span12">
                <option> Price Discount</option>
              </select>
            </div>
          </div>
           <div class="control-group row-fluid">
            <label class="control-label span1"> Coupon Type<?php echo lang('group');?><span class="help-block"></span></label>
            <div class="controls span3">
              <select class="span12">
                <option>Price Discount</option>
              </select>
			  
            </div>
			<div class="controls span3">
			<?php
			$data	= array('name'=>'phone', 'value'=>set_value('phone', $phone), 'class'=>'span12');
			echo form_input($data); ?>
			</div>
          </div>
		  <div class="row-fluid">
          <div class="span4" >
          <div class="box paint color_10">
            
            <div class="content">
				<select id="gc_coupon_appliesto_fields">
					<option value="1"> apply coupon to whole coupon</option>
					<option value="0">apply coupon to selcted items</option>
				</select>
				<div id="gc_coupon_products">
				 <table>
				 	<tr>
						<td>product 1</td>
						<td><input type="checkbox" name="product" value="1" /></td>
						
					</tr> 
				 </table>
				</div>
			</div>
          </div>
          <!-- End .box --> 
        </div>
          </div>
          
		</div>
		
		<button type="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button>
        </div>
        <!-- End .span4 -->
		  
      </div>
	  <!-------end content------>
      <!-- End .row-fluid --> 
    </div>
    <!-- End #container --> 
  </div>
</div>
</div>
</div>


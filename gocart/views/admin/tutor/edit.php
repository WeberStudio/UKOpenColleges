<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); 
?>
<div id="main" style="min-height:1000px">
  <div class="container">
    <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
    <div id="main_container">
      <div class="row-fluid">
        <div class="span7">
          <div class="box paint color_18">
            <div class="title">
            <h4> <i class=" icon-bar-chart"></i>Customer Form </h4>  
            </div>           <!-- End .title --> 
<div class="content">
 <?php
 
$company ="";
$firstname="";
$lastname="";
$email="";
$phone="";
$email_subscribe="";
$active="";
$group_id="";
$group_list="";
 ?>
<?php //echo form_open($this->config->item('admin_folder').'/customers/form/'.$id, array('class' => 'form-horizontal cmxform', 'id' => 'validateForm')); ?>
	<div class="control-group row-fluid">  
 <label class="control-label span3"> Category<?php echo lang('group');?><span class="help-block"></span></label>
 	<div class="controls span7">
	 <div id="sel45G_chzn" class="chzn-container chzn-container-single" style="width: 220px;">
            <a class="chzn-single chzn-default" href="javascript:void(0)">
            <span>Choose a Module...</span>
            <div>
            <b></b>
            </div>
            </a>
	</div>
                    </div>
    </div>
    <div class="control-group row-fluid">  
 		<label class="control-label span3"> Courses<span class="help-block"></span></label>
        <div class="controls span7">
	 	<div id="sel45G_chzn" class="chzn-container chzn-container-single" style="width: 220px;">
            <a class="chzn-single chzn-default" href="javascript:void(0)">
            <span>Choose a Module...</span>
            <div>
            <b></b>
            </div>
            </a>
        </div>
        </div>
 	</div>
    <div class="form-row control-group row-fluid"> 
	   			<label class="control-label span3" for="hint-field"><?php //echo lang('company');?>Company<span class="help-block"></span></label>
                <div class="controls span7"> <?php
			$data	= array('name'=>'company', 'value'=>set_value('company', $company), 'class'=>'span12');
			echo form_input($data); ?>
		</div>
	</div>
             <div class="form-row control-group row-fluid">  
	   		<label class="control-label span3" for="hint-field"><?php //echo lang('firstname');?> First Name<span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'firstname', 'value'=>set_value('firstname', $firstname), 'class'=>'span12');
			echo form_input($data); ?>
		</div>  </div>
		
             <div class="form-row control-group row-fluid">
			<label class="control-label span3" for="hint-field"><?php //echo lang('lastname');?> Last Name<span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'lastname', 'value'=>set_value('lastname', $lastname), 'class'=>'span12');
			echo form_input($data); ?>
		</div>
	</div>
                
		<div class="form-row control-group row-fluid">   
			<label class="control-label span3" for="hint-field"><?php //echo lang('phone');?> Phone<span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'phone', 'value'=>set_value('phone', $phone), 'class'=>'span12');
			echo form_input($data); ?>
		</div>
	</div>                                             
        <div class="form-row control-group row-fluid"> 
			<label class="control-label span3" for="hint-field"><?php echo lang('email');?> E-Mail<span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'email', 'value'=>set_value('email', $email), 'class'=>'span12');
			echo form_input($data); ?>
		</div> 
        </div>                                          
        <div class="form-row control-group row-fluid">  
		<label class="control-label span3" for="hint-field"><?php //echo lang('password');?> Password<span class="help-block"></span></label>
        
	    <div class="controls span7">
        <div class="input-prepend row-fluid">
        <span class="add-on">
			<i class="icon-lock"></i>
		</span>
		<?php
			$data	= array('name'=>'password', 'class'=>'row-fluid valid' , 'placeholder'=>'min 5 characters');
			echo form_password($data); ?>
            </div>
		</div> 
        </div> 
		<div class="form-row control-group row-fluid">   
			<label class="control-label span3" for="hint-field"><?php //echo lang('confirm');?> Confirm Password<span class="help-block"></span></label>
			<div class="controls span7">
            <div class="input-prepend row-fluid">
            <span class="add-on">
                <i class="icon-lock"></i>
            </span>
			<?php
			$data	= array('name'=>'confirm', 'class'=>'row-fluid','placeholder'=>'Confirm');
			echo form_password($data); ?>
            </div>
		</div>
	</div>

        <div class="form-row control-group row-fluid">
		<label class="control-label span3" for="hint-field"><span class="help-block"></span></label>   
        <label class="checkbox">
<?php $data	= array('name'=>'email_subscribe', 'value'=>1, 'checked'=>(bool)$email_subscribe);
			echo form_checkbox($data).' '.lang('email_subscribed'); ?>
            Email Subscribed
			</label>
		</div>
      <div class="form-row control-group row-fluid"> 
        <label class="control-label span3" for="hint-field"><span class="help-block"></span></label>      
       <label class="checkbox">
				<?php
				$data	= array('name'=>'active', 'value'=>1, 'checked'=>$active);
				echo form_checkbox($data).' '.lang('active'); ?>
			</label>
		</div>
			<div class="control-group row-fluid">  
 <label class="control-label span3"> Category<?php echo lang('group');?><span class="help-block"></span></label>
 		<div class="controls span7">
     <div id="sel45G_chzn" class="chzn-container chzn-container-single" style="width: 220px;">
        <a class="chzn-single chzn-default" href="javascript:void(0)">
        <span>Choose a Module...</span>
        <div>
        <b></b>
        </div>
        </a>
        </div>
       </div>
    </div>
 			<div class="form-horizontal form-actions">
                <div class="span7 offset3">
                <button class="btn btn-primary" value="Save" type="submit">Save </button>
              </div>
	         
   </form>
 </div>
        <!-- End .span4 --> 
      </div>
      <!-- End .row-fluid --> 
    </div>
    <!-- End #container --> 
  </div>
</div>
<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); 
?>
<div id="main" style="min-height:1000px">
  <div class="container">
    <? include_once('includes/admin_profile.php');?>
    <div id="main_container">
      <div class="row-fluid">
        <div class="span7">
          <div class="box paint color_4">
            <div class="title">
            <h4> <i class=" icon-bar-chart"></i>Customer Form </h4>  
            </div>           <!-- End .title --> 
<div class="content"> 
<?php echo form_open($this->config->item('admin_folder').'/customers/form/'.$id, array('class' => 'form-horizontal cmxform', 'id' => 'validateForm')); ?>
    <div class="form-row control-group row-fluid"> 
	   			<label class="control-label span3" for="hint-field"><?php echo lang('company');?><span class="help-block"></span></label>
			       <div class="controls span7"> <?php
			$data	= array('name'=>'company', 'value'=>set_value('company', $company), 'class'=>'span12');
			echo form_input($data); ?>
		</div>
	</div>
             <div class="form-row control-group row-fluid">  
	   		<label class="control-label span3" for="hint-field"><?php echo lang('firstname');?><span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'firstname', 'value'=>set_value('firstname', $firstname), 'class'=>'span12');
			echo form_input($data); ?>
		</div>  </div>
		
             <div class="form-row control-group row-fluid">
			<label class="control-label span3" for="hint-field"><?php echo lang('lastname');?><span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'lastname', 'value'=>set_value('lastname', $lastname), 'class'=>'span12');
			echo form_input($data); ?>
		</div>
	</div>
            <div class="form-row control-group row-fluid"> 
			<label class="control-label span3" for="hint-field"><?php echo lang('email');?><span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'email', 'value'=>set_value('email', $email), 'class'=>'span12');
			echo form_input($data); ?>
		</div> 
        </div>    
		<div class="form-row control-group row-fluid">   
			<label class="control-label span3" for="hint-field"><?php echo lang('phone');?><span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'phone', 'value'=>set_value('phone', $phone), 'class'=>'span12');
			echo form_input($data); ?>
		</div>
	</div>                                             
                                                       
        <div class="form-row control-group row-fluid">  
		<label class="control-label span3" for="hint-field"><?php echo lang('password');?><span class="help-block"></span></label>
	    <div class="controls span7"><?php
			$data	= array('name'=>'password', 'class'=>'span12');
			echo form_password($data); ?>
		</div> </div> 
		<div class="form-row control-group row-fluid">   
			<label class="control-label span3" for="hint-field"><?php echo lang('confirm');?><span class="help-block"></span></label>
			<div class="controls span7"><?php
			$data	= array('name'=>'confirm', 'class'=>'span12');
			echo form_password($data); ?>
		</div>
	</div>

        <div class="form-row control-group row-fluid">
		<label class="control-label span3" for="hint-field"><span class="help-block"></span></label>   
        <label class="checkbox">
<?php $data	= array('name'=>'email_subscribe', 'value'=>1, 'checked'=>(bool)$email_subscribe);
			echo form_checkbox($data).' '.lang('email_subscribed'); ?>
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
 <label class="control-label span3"><?php echo lang('group');?></label>
	 <div class="controls span7">
     <?php echo form_dropdown('group_id', $group_list, set_value('group_id',$group_id), 'class="span12"'); ?>
		</div>
 </div>
	         <div class="form-actions row-fluid">
                  <div class="span7 offset3">
                    <button type="submit" class="btn btn-primary" value="<?php echo lang('save');?>">Save </button>
                  </div>
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
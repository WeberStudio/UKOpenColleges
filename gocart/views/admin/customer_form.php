<?php //include('header.php'); ?>
<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); 
?>
<div id="main" style="min-height:1000px">
  <div class="container">
    <div class="header row-fluid">
      <div class="logo"> <a href="index.html"><span>Start</span><span class="icon"></span></a> </div>
      <div class="top_right">
        <ul class="nav nav_menu">
          <li class="dropdown"> <a class="dropdown-toggle administrator" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="../../page.html">
            <div class="title"><span class="name">George</span><span class="subtitle">Future Buyer</span></div>
            <span class="icon"><img src="<?=base_url().ASSETS_PATH?>img/thumbnail_george.jpg"></span></a>
            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
              <li><a href="profile.html"><i class=" icon-user"></i> My Profile</a></li>
              <li><a href="forms_general.html"><i class=" icon-cog"></i>Settings</a></li>
              <li><a href="<?php echo site_url($this->config->item('admin_folder').'/login/logout');?>"><i class=" icon-unlock"></i><?php echo lang('common_log_out') ?></a></li>
              <li><a href="search.html"><i class=" icon-flag"></i>Help</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- End top-right -->
      </div>
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

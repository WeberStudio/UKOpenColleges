<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); 
?>

<div id="main" style="min-height:1000px">
<div class="container">
<? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
<div id="main_container">
  <div class="row-fluid">
    <div class="span12">
      <div class="box paint color_18">
        <div class="title">
          <h4> <i class=" icon-bar-chart"></i>Tutor Form </h4>
        </div>
        <!-- End .title -->
        <div class="content">
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
          <?php //echo form_open($this->config->item('admin_folder').'/customers/form/'.$id, array('class' => '', 'id' => 'validateForm')); ?>
          
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field"> Catagory
              <?php //echo lang('state');?>
              <span class="help-block"></span></label>
            <div class="controls span7">
              <select class="span12">
                <option> </option>
              </select>
            </div>
          </div>
          <div class="control-group row-fluid">
            <label class="control-label span1"> Courses<span class="help-block"></span></label>
            <div class="controls span7">
              <select class="span12">
                <option> </option>
              </select>
            </div>
          </div>
          <!--<div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('company');?>
              Company<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'company', 'value'=>set_value('company', $company), 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>-->
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('firstname');?>
              First Name<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'firstname', 'value'=>set_value('firstname', $firstname), 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('lastname');?>
              Last Name<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'lastname', 'value'=>set_value('lastname', $lastname), 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('phone');?>
              Phone<span class="help-block"></span></label>
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
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('password');?>
              Password<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'password', 'class'=>'row-fluid valid' , 'placeholder'=>'min 5 characters');
			echo form_password($data); ?>
              
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('confirm');?>
              Confirm Password<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'confirm', 'class'=>'row-fluid','placeholder'=>'Confirm');
			echo form_password($data); ?>
              
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field"><?php echo lang('description');?> <span class="help-block"></span></label>
            <div class="controls span7">
              <?php
                                $data	= array('name'=>'description', 'class'=>'redactor', 'value'=>set_value('description', $description));
                                echo form_textarea($data);
                                ?>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="text">Comment</label>
            <div class="controls span7">
              <textarea id="text" rows="3" class="row-fluid"></textarea>
              <div id="bottom"> <span id="chars">100</span> characters remaining </div>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="search-input">File upload</label>
            <div class="controls span7">
              <div class="input-append row-fluid">
                <input type="file" class="spa1n6 fileinput" id="search-input">
                > </div>
            </div>
          </div>
          <div class="control-group row-fluid">
            <label class="control-label span1"> Group<?php echo lang('group');?><span class="help-block"></span></label>
            <div class="controls span7">
              <select class="span12">
                <option> </option>
              </select>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field"><span class="help-block"></span></label>
            <label class="checkbox">
              <?php $data	= array('name'=>'email_subscribe', 'value'=>1, 'checked'=>(bool)$email_subscribe);
			echo form_checkbox($data).' '.lang('email_subscribed'); ?>
              Email Subscribed </label>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field"><span class="help-block"></span></label>
            <label class="checkbox">
              <?php
				$data	= array('name'=>'active', 'value'=>1, 'checked'=>$active);
				echo form_checkbox($data).' '.lang('active'); ?>
            </label>
          </div>
          <button type="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button>
          </form>
        </div>
        <!-- End .span4 --> 
      </div>
      <!-- End .row-fluid --> 
    </div>
    <!-- End #container --> 
  </div>
</div>
</div>
<script type="text/javascript">
$('form').submit(function() {
	$('.btn').attr('disabled', true).addClass('disabled');
});
</script>
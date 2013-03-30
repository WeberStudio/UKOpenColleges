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
            <h4> <i class=" icon-bar-chart"></i>Administrator Form </h4>  
            </div>           <!-- End .title --> 
        <div class="content">
        <?php echo form_open($this->config->item('admin_folder').'/admin/form/'.$id, array('class' => 'form-horizontal cmxform', 'id' => 'validateForm')); ?>
         <div class="form-row control-group row-fluid">
        <label class="control-label span3" for="hint-field"><?php echo lang('firstname');?><span class="help-block"></span></label>
       <div class="controls span7">  <?php
        $data    = array('name'=>'firstname', 'value'=>set_value('firstname', $firstname));
        echo form_input($data, array('class' => 'span12'));
        ?>
        </div>
        </div>
              <div class="form-row control-group row-fluid"> 
        <label class="control-label span3" for="hint-field"><?php echo lang('lastname');?><span class="help-block"></span></label>
        <div class="controls span7"> <?php
        $data    = array('name'=>'lastname', 'value'=>set_value('lastname', $lastname));
        echo form_input($data);
        ?>
                  </div>
        </div>
        <div class="form-row control-group row-fluid">  
        <label class="control-label span3" for="hint-field"><?php echo lang('email');?><span class="help-block"></span> </label>
        <div class="controls span7"> <?php
        $data    = array('name'=>'email', 'value'=>set_value('email', $email));
        echo form_input($data);
        ?></div>
        </div>
        <div class="form-row control-group row-fluid"> 
        <label class="control-label span3"><?php echo lang('access');?></label>
       <div class="controls span7"><?php
       $data    = array('name'=>'Admin', 'value'=>set_value('Admin','Admin'));
        echo form_input($data);
        
       // $options = array(    'Admin'        => 'Admin',
         //                   'Orders'    => 'Orders'
           //             );
        //echo form_dropdown('access', $options, set_value('phone', $access));
        ?>
        </div>
        </div>
        <div class="form-row control-group row-fluid"> 
        <label class="control-label span3"><?php echo lang('password');?></label>
        <div class="controls span7"><?php
        $data    = array('name'=>'password');
        echo form_password($data);
        ?></div>
        </div>
           <div class="form-row control-group row-fluid"> 
        <label class="control-label span3"><?php echo lang('confirm_password');?></label>
        <div class="controls span7"><?php
        $data    = array('name'=>'confirm');
        echo form_password($data);
        ?>
          </div>
        </div>
         <div class="form-actions row-fluid">
                  <div class="span7 offset3">
                  
        <div class="form-actions">
            <input class="btn btn-primary" type="submit" value="<?php echo lang('save');?>"/>
        </div>                             
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
<script type="text/javascript">
if ($.browser.webkit) {
    $('input').attr('autocomplete', 'off');
}
$('form').submit(function() {
    $('.btn').attr('disabled', true).addClass('disabled');
});
</script>

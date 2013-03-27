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

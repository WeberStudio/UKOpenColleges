<div id="main" style="min-height:1000px">
<div class="container">
  <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
  <!-- End top-right -->
  <?php
	//lets have the flashdata overright "$message" if it exists
	if($this->session->flashdata('message'))
	{
		$message	= $this->session->flashdata('message');
	}
	
	if($this->session->flashdata('error'))
	{
		$error	= $this->session->flashdata('error');
	}
	
	?>
  <div id="js_error_container" class="alert alert-error" style="display:none;">
    <p id="js_error"></p>
  </div>
  <div id="js_note_container" class="alert alert-note" style="display:none;"> </div>
  <?php if (!empty($message)): ?>
  <div class="alert alert-success"> <a class="close" data-dismiss="alert">*</a> <?php echo $message; ?> </div>
  <?php endif; ?>
  <?php if (!empty($error)): ?>
  <div class="alert alert-error"> <a class="close" data-dismiss="alert">*</a> <?php echo $error; ?> </div>
  <?php endif; ?>
  <div id="main_container">
    <div class="row-fluid">
      <div class="span12">
        <div class="box paint color_5">
          <div class="title">
            <div class="row-fluid">
              <h4><?php echo lang('tax_title');?></h4>
            </div>
          </div>
          <div class="content">
		  <?php echo form_open_multipart($this->config->item('admin_folder').'/tax/form/'.$id); ?>
            <div class="control-group">
              <label class="control-label"><?php echo lang('name'); ?>: </label>
              <div class="controls">
                <input type="text" class="span8" name="tax_rate_name" id="tax_rate_name"  value="<?php echo set_value('tax_rate_name', $tax_rate_name); ?>">
              </div>
            </div>            
			<fieldset>
			<div class="control-group">
              <label class="control-label"><?php echo lang('tax'); ?>: </label>
              <div class="controls">
                <input type="text" class="span8" name="tax_rate_percent" id="tax_rate_percent" value="<?php echo set_value('tax_rate_percent', $tax_rate_percent); ?>">
              </div>
            </div>
			
			<div class="control-group">
              <label for="date"><?php echo lang('tax_level'); ?>: </label>              
			  <div class="controls">
                <input type="checkbox" name="tax_level"  <? if($tax_level=='Universal'){ echo "checked"; } ?> class="span12" />
              </div>
            </div>
			<br />
			
            <button type="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button>
			</fieldset>
			</form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
    $('form').submit(function() {
        $('.btn').attr('disabled', true).addClass('disabled');
    });
</script>
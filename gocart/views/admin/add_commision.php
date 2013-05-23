
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
          <h4> <i class=" icon-bar-chart"></i>Add Commision </h4>
        
        <!-- End .title -->
        <div class="content">
		
		
		<div class="tab-pane fade in active" id="form">
          <?php //echo form_open($this->config->item('admin_folder').'/customers/form/'.$id, array('class' => '', 'id' => 'validateForm')); ?>
 
          <div class="control-group row-fluid">
            <label class="control-label span1">Commision Level<?php echo lang('group');?><span class="help-block"></span></label>
            <div class="controls span7">
              <select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="categories[]" multiple="true" tabindex="5">
                <option> Universal Level</option>
				<option> Courses Product Level</option>
				<option> Courses Catalog Level</option>
				<option> Courses Level</option>
              </select>
            </div>
          </div>
          <div class="control-group row-fluid">
            <label class="control-label span1">Commision unknown<?php echo lang('group');?><span class="help-block"></span></label>
            <div class="controls span7">
              <select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="categories[]" multiple="true" tabindex="5">
                <option>Price Discount</option>
              </select>
			  
            </div>
		 </div>
		  <div class="control-group row-fluid">
            <label class="control-label span1">Commision Rate<?php echo lang('group');?><span class="help-block"></span></label>
            <div class="controls span7">
              <select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="categories[]" multiple="true" tabindex="5">
                <option> some text</option>
				<option> some text</option>
              </select>
            </div>
          </div>
		  <div class="control-group row-fluid">
            <label class="control-label span1">Ammount<?php echo lang('group');?><span class="help-block"></span></label>
            <div class="controls span6">
				<label class="control-label span3">
              <input type="radio" name="pre" value="" checked="">
			  Persentage
			  </label>
			  <label class="control-label span3">
              <input type="radio" name="pre" value="" checked="checked">
			  Fixed
			  </label>
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


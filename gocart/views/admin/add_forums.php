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
          <h4> <i class=" icon-bar-chart"></i>Add Forums </h4>
        
        <!-- End .title -->
        <div class="content">
		
		
		<div class="tab-pane fade in active" id="form">
          <?php //echo form_open($this->config->item('admin_folder').'/customers/form/'.$id, array('class' => '', 'id' => 'validateForm')); ?>
 			<div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              Title
              <span class="help-block"></span></label>
            <div class="controls span7">
			<input type="text" class="span12">
            </div>
          </div>
          <div class="control-group row-fluid">
            <label class="control-label span1">Lesson<span class="help-block"></span></label>
            <div class="controls span7">
              <select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="categories[]" multiple="true" tabindex="5">
                <option>Lesson 1 </option>
				<option>Lesson 2</option>
				<option>Lesson 3</option>
				<option>Lesson 4</option>
              </select>
            </div>
          </div>
          <div class="control-group row-fluid">
            <label class="control-label span1">For User <span class="help-block"></span></label>
            <div class="controls span7">
              <select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="categories[]" multiple="true" tabindex="5">
                <option>User 1</option>
				<option>User 2</option>
				<option>User 3</option>
				<option>User 4</option>
              </select>
			  
            </div>
		 </div>
		  <div class="control-group row-fluid">
            <label class="control-label span1">For Tutor<span class="help-block"></span></label>
            <div class="controls span7">
              <select data-placeholder="Choose Multiple Categories" class="chzn-select span12" name="categories[]" multiple="true" tabindex="5">
                <option> some text</option>
				<option> some text</option>
              </select>
            </div>
          </div>
		  <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field">Description <span class="help-block"></span></label>
                  <div class="controls span7">
				  <textarea name="description" class="redactor"></textarea>
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


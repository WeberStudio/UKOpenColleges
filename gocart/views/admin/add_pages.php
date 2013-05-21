<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); 
?>
<?php
$data 			= "";
$description 	= "";
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
		<ul id="tabExample1" class="nav nav-tabs">
                <li class="active"><a href="#content" data-toggle="tab">Contents</a></li>
                <li><a href="#attributes" data-toggle="tab">Attributes</a></li>
                <li><a href="#seo" data-toggle="tab">SEO</a></li>
              </ul>
		<div class="tab-content">
		<div class="tab-pane fade in active" id="content">
          <?php //echo form_open($this->config->item('admin_folder').'/customers/form/'.$id, array('class' => '', 'id' => 'validateForm')); ?>

      
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">
              <?php //echo lang('firstname');?>
              First Name<span class="help-block"></span></label>
            <div class="controls span7">
              <?php
			$data	= array('name'=>'Title', 'class'=>'span12');
			echo form_input($data); ?>
            </div>
          </div>
          <div class="form-row control-group row-fluid">
            <label class="control-label span1" for="hint-field">Content <span class="help-block"></span></label>
            <div class="controls span7">
              <?php
					$data	= array('name'=>'description', 'class'=>'redactor', 'value'=>set_value('description', $description));
					echo form_textarea($data);
				?>
            </div>
          </div>
          </div>
		<div class="tab-pane fade" id="attributes">
			
			<div class="form-row control-group row-fluid">
				<label class="control-label span1" for="hint-field">Manu Title<span class="help-block"></span></label>
				<div class="controls span7">
				 <?php
				 $data	= array('name'=>'manu_title', 'class'=>'span12');
				 echo form_input($data); ?>
				</div>
			</div>
			<div class="form-row control-group row-fluid">
				<label class="control-label span1" for="hint-field">Slug<span class="help-block"></span></label>
				<div class="controls span7">
				 <?php
				 $data	= array('name'=>'slug', 'class'=>'span12');
				 echo form_input($data); ?>
				</div>
			</div>
			<div class="form-row control-group row-fluid">
				<label class="control-label span1" for="hint-field"> Parent <span class="help-block"></span></label>
				<div class="controls span7">
				  <select class="span12">
					<option> Top Level</option>
					<option> some text</option>
					</select>
				</div>
			</div>
			<div class="form-row control-group row-fluid">
				<label class="control-label span1" for="hint-field">Sequence<span class="help-block"></span></label>
				<div class="controls span7">
				 <?php
				 $data	= array('name'=>'sequence', 'class'=>'span12');
				 echo form_input($data); ?>
				</div>
			</div>
		 </div>
		<div class="tab-pane fade" id="seo">
			<div class="form-row control-group row-fluid">
					<label class="control-label span1" for="hint-field">SEO Title<span class="help-block"></span></label>
					<div class="controls span7">
					 <?php
					 $data	= array('name'=>'seo_title', 'class'=>'span12');
					 echo form_input($data); ?>
					</div>
         		</div>
			<div class="form-row control-group row-fluid">
				<label class="control-label span1" for="text">Meta Data</label>
				<div class="controls span7">
				  <textarea id="text" rows="3" class="row-fluid"></textarea>
				 </div>
		   </div>
		</div>
		
		
        </div>
        <!-- End .span4 -->
		 <button type="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button> 
      </div>
	  <!-------end content------>
      <!-- End .row-fluid --> 
    </div>
    <!-- End #container --> 
  </div>
</div>
</div>
</div>


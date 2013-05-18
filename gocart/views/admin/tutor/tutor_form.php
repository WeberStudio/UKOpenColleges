<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); ?>
<div id="main" style="min-height:1000px">
<div class="container">
  <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
  <div id="main_container">
    <div class="row-fluid">
      <div class="span12">
        <div class="box paint color_22">
          <div class="title">
            <h4> <i class=" icon-bar-chart"></i>Tutor Form </h4>
          </div>
          <!-- End .title -->
          <div class="content">
            <ul id="tabExample1" class="nav nav-tabs">
              <li class="active"><a href="#form" data-toggle="tab">Form</a></li>
              <li><a href="#qualification" data-toggle="tab">Qualification</a></li>
              <li><a href="#experience" data-toggle="tab">Experience</a></li>
              <li><a href="#achievement" data-toggle="tab">Achievement</a></li>
              <li><a href="#extra" data-toggle="tab">Extra</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane fade in active" id="form">
                <?php echo form_open_multipart($this->config->item('admin_folder').'/tutor/form/'.$id, array('class' => '', 'id' => 'validateForm')); ?>
               
                    <div class="form-row control-group row-fluid">
                      <label class="control-label span1"><span class="hint-field">Categories</span></label>
                      <div class="controls span7">
                      
                        <select data-placeholder="Choose Multiple Categories" class="chzn-select" name="categories[]" multiple="true" tabindex="5">
                        <? if(isset($all_categories)){  ?>
                        <?php  foreach ($all_categories as $file){
								$flag = 0;
								//$this->show->pe($file);
								for($i = 0; $i<count($all_categories); $i++){
									if(isset($product_categories[$i]->category_id) && $product_categories[$i]->category_id==$file['id']){ 
									$flag = 1;
						?>
                          			<option selected="selected" value="<?=$file['id']?>"><?=$file['name']?></option>
                            
                         <?php //$i++;
						 			break;
									}
									
						  		}
								if($flag==0)
								{?>
									<option  value="<?=$file['id']?>"><?=$file['name']?></option>
							<?	}
						 	}
						} 
						 ?>
                        </select>
                      </div>
                    </div>
                
                <div class="form-row control-group row-fluid">
                      <label class="control-label span1"><span class="hint-field">Courses</span></label>
                      <div class="controls span7">
                      
                        <select data-placeholder="Choose Multiple Courses" class="chzn-select" name="courses[]" multiple="true" tabindex="5">
                        <? if(isset($courses)){  ?>
                        <?php  foreach ($courses as $course){
								$flag = 0;
								//$this->show->pe($file);
								for($i = 0; $i<count($courses); $i++){
									if(isset($product_categories[$i]->category_id) && $product_categories[$i]->category_id==$file['id']){ 
									$flag = 1;
						?>
                          			<option selected="selected" value="<?=$course['id']?>"><?=$course['name']?></option>
                            
                         <?php //$i++;
						 			break;
									}
									
						  		}
								if($flag==0)
								{?>
									<option  value="<?=$course['id']?>"><?=$course['name']?></option>
							<?	}
						 	}
						} 
						 ?>
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
                  <label class="control-label span1" for="hint-field"><?php echo lang('email');?><span class="help-block"></span></label>
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
                    <textarea id="text" rows="3"  name="comments" class="row-fluid"><? echo set_value('comments', $comments); ?></textarea>
					<?
					 //$data	= array('name'=>'comments', 'value'=>set_value('comments', $comments));
                    // echo form_textarea($data);
					
					?>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="search-input">File upload</label>
                  <div class="controls span7">
                    <div class="input-append row-fluid">
                      <input type="file" class="spa1n6 fileinput" id="search-input">
					</div>
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
              </div>
              <div class="tab-pane fade" id="qualification">
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field">Degree Title<span class="help-block"></span></label>
                  <div class="controls span7">
                    <?php
				 $data	= array('name'=>'degre_title', 'class'=>'span12');
				 echo form_input($data); ?>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field"> Year <span class="help-block"></span></label>
                  <div class="controls span7">
                    <select class="span12">
                      <option> Year</option>
                      <option> 2001</option>
                      <option> 2002</option>
                      <option> 2003</option>
                      <option> 2004</option>
                    </select>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="text">Description</label>
                  <div class="controls span7">
                    <textarea id="text" rows="3" class="row-fluid"></textarea>
                  </div>
                </div>
                <div id="addnew"></div>
                <div class="form-row control-group row-fluid" align="center">
                  <button class="btn btn-success" rel="tooltip" onclick="add_qualification();">Add More <i class="gicon-plus-sign"></i></button>
                </div>
              </div>
              <div class="tab-pane fade" id="experience">
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field"> Form <span class="help-block"></span></label>
                  <div class="controls span7">
                    <select class="span12">
                      <option> Year</option>
                      <option> 2001</option>
                      <option> 2002</option>
                      <option> 2003</option>
                      <option> 2004</option>
                    </select>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field"> To <span class="help-block"></span></label>
                  <div class="controls span7">
                    <select class="span12">
                      <option> Year</option>
                      <option> 2001</option>
                      <option> 2002</option>
                      <option> 2003</option>
                      <option> 2004</option>
                    </select>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field">Designation<span class="help-block"></span></label>
                  <div class="controls span7">
                    <?php
					 $data	= array('name'=>'degre_title', 'class'=>'span12');
					 echo form_input($data); ?>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="text">Description</label>
                  <div class="controls span7">
                    <textarea id="text" rows="3" class="row-fluid"></textarea>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="achievement">
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field">Achievement Title<span class="help-block"></span></label>
                  <div class="controls span7">
                    <?php
				 $data	= array('name'=>'degre_title', 'class'=>'span12');
				 echo form_input($data); ?>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="hint-field"> Year <span class="help-block"></span></label>
                  <div class="controls span7">
                    <select class="span12">
                      <option> Year</option>
                      <option> 2001</option>
                      <option> 2002</option>
                      <option> 2003</option>
                      <option> 2004</option>
                    </select>
                  </div>
                </div>
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="text">Description</label>
                  <div class="controls span7">
                    <textarea id="text" rows="3" class="row-fluid"></textarea>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="extra">
                <div class="form-row control-group row-fluid">
                  <label class="control-label span1" for="text">Description</label>
                  <div class="controls span7">
                    <textarea id="text" rows="3" class="row-fluid"></textarea>
                  </div>
                </div>
              </div>
            </div>
            <!-- End .span4 -->
            <button type="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button>
			</form>
          </div>
          <!-------end content------>
          <!-- End .row-fluid -->
        </div>
        <!-- End #container -->
      </div>
    </div>
  </div>
</div>
<script>
function add_qualification(){
var addhtml = "<i> this kljdklfjsldkfjlksa fjskfjliksfjsldjfosjfklfjsdf lsk</i>";
		    document.getElementById('addnew').innerHTML="addhtml";


}
</script>

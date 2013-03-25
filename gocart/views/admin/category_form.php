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
            <div class="span12">
              <div class="box paint color_5">
            
                <div class="title">
                  <div class="row-fluid">
                    <h4> Category Form</h4>
                  </div>
                </div>
                
                <div class="content">
				
				<?php echo form_open_multipart($this->config->item('admin_folder').'/categories/form/'.$id); ?>
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#description_tab" data-toggle="tab"><?php echo lang('description');?></a></li>
                        <li><a href="#attributes_tab" data-toggle="tab"><?php echo lang('attributes');?></a></li>
                        <li><a href="#seo_tab" data-toggle="tab"><?php echo lang('seo');?></a></li>
                    </ul>
                
                    <div class="tab-content">
                        <div class="tab-pane active" id="description_tab">
                            
                            <fieldset>
                                <label for="name"><?php echo lang('name');?></label>
                                <?php
                                $data	= array('name'=>'name', 'value'=>set_value('name', $name), 'class'=>'span8');
                                echo form_input($data);
                                ?>
                                
                                <label for="description"><?php echo lang('description');?></label>
                                <?php
                                $data	= array('name'=>'description', 'class'=>'redactor', 'value'=>set_value('description', $description));
                                echo form_textarea($data);
                                ?>
                            </fieldset>
                            <div class="form-row control-group row-fluid ">
                              <h3>Course Status</h3>
                              <div class="controls span3">
                                <div class="row-fluid">
                                  <div class="pull-left">
                                    <label class="radio off">
                                      <input type="radio" name="enabled" id="toggle1-off" value="off" >
                                    </label>
                                    <label class="radio on">
                                      <input type="radio" name="enabled" id="toggle1-on" value="on" checked="true">
                                    </label>
                                    <div class="toggle off">
                                      <div class="yes"> ON </div>
                                      <div class="switch"> </div>
                                      <div class="no"> OFF </div>
                                    </div>
                                  </div>                      
                                </div>
                              </div>
                            </div>
                        </div>
                
                        <div class="tab-pane fade"id="attributes_tab">
                            
                            <fieldset>
                                <label for="slug"><?php echo lang('slug');?> </label>
                                <?php
                                $data	= array('name'=>'slug', 'value'=>set_value('slug', $slug), 'class'=>'span8');
                                echo form_input($data);
                                ?>
                                
                                <label for="sequence"><?php echo lang('sequence');?> </label>
                                <?php
                                $data	= array('name'=>'sequence', 'value'=>set_value('sequence', $sequence), 'class'=>'span8');
                                echo form_input($data);
                                ?>
                                <div class="form-row control-group row-fluid">
                       			<div class="controls span8">
                                <label for="slug"><?php echo lang('parent');?> </label>
                                <?php
                                $data	= array(0 => 'Top Level Category');
                                foreach($categories as $parent)
                                {
                                    if($parent->id != $id)
                                    {
                                        $data[$parent->id] = $parent->name;
                                    }
                                }
                                echo form_dropdown('parent_id', $data, $parent_id,  "class='chzn-select'");
                                ?>
                                </div></div>
                                <label for="excerpt"><?php echo lang('excerpt');?> </label>
                                <?php
                                $data	= array('name'=>'excerpt', 'value'=>set_value('excerpt', $excerpt), 'class'=>'span12', 'rows'=>3);
                                echo form_textarea($data);
                                ?>
                				
                                <label for="image">Upload <?php echo lang('image');?> </label>
                                <div class="form-row control-group row-fluid">
                                  <div class="controls span7">
                                    <div class="input-append row-fluid">
                                      <div class="uploader" id="uniform-search-input">
                                        <div class="customfile">
                                          	<div class="uneditable-input spa1n6 fileinput" aria-hidden="true"><span>choose a file...</span></div>
                                        </div>
                                        <input type="file" class="spa1n6 fileinput customfile-input" id="search-input"  name="image">
                                      </div>
                                   </div>
                                 </div>
                               </div>
                                <?php if($id && $image != ''):?>
                                
                                <div style="text-align:center; padding:5px; border:1px solid #ddd;"><img src="<?php echo base_url('uploads/images/small/'.$image);?>" alt="current"/><br/><?php echo lang('current_file');?></div>
                                
                                <?php endif;?>
                                
                            </fieldset>
                            
                        </div>
                        
                        <div class="tab-pane" id="seo_tab">
                            <fieldset>
                                <label for="seo_title"><?php echo lang('seo_title');?> </label>
                                <?php
                                $data	= array('name'=>'seo_title', 'value'=>set_value('seo_title', $seo_title), 'class'=>'span12');
                                echo form_input($data);
                                ?>
                                
                                <label><?php echo lang('meta');?></label> 
                                <?php
                                $data	= array('rows'=>3, 'name'=>'meta', 'value'=>set_value('meta', html_entity_decode($meta)), 'class'=>'span12');
                                echo form_textarea($data);
                                ?>
                                <p class="help-block"><?php echo lang('meta_data_description');?></p>
                            </fieldset>
                        </div>
                    </div>
                   
                    <button type="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button>
                  
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
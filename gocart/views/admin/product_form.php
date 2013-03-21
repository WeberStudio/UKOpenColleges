<?php 
$GLOBALS['option_value_count']		= 0;
?>

<div id="main">
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
            <li><a href="index2.html"><i class=" icon-unlock"></i>Log Out</a></li>
            <li><a href="search.html"><i class=" icon-flag"></i>Help</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <!-- End top-right -->
  </div>
    <div id="main_container">
     <form class="form-horizontal" action="<?=$this->config->item('admin_folder').'/products/form/'.$id?>" method="post">
      <div class="row-fluid">
        <div class="span12">
          <div class="box paint color_3">
            <div class="title">
              <div class="row-fluid">
                <h4> Regular tabs </h4>
              </div>
            </div>
            <!-- End .title -->
            <div class="content">
              <ul id="tabExample1" class="nav nav-tabs">
                <li class="active"><a href="#details" data-toggle="tab"><?php echo lang('details');?></a></li>
                <li><a href="#categories" data-toggle="tab"><?php echo lang('categories');?></a></li>
                <li><a href="#options" data-toggle="tab"><?php echo lang('course_registration_form');?></a></li>
                <li><a href="#related-products" data-toggle="tab"><?php echo lang('related_courses');?></a></li>
                <li><a href="#images" data-toggle="tab"><?php echo lang('images');?></a></li>
              </ul>
              <div class="tab-content">
                <!--TAB ONE START-->
                <div class="tab-pane fade in active" id="details">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <div class="controls span8">
                        <input type="text" id="normal-field" value="<?=set_value('name', $name)?>" name="name" class="row-fluid" placeholder="Course Name">
                      </div>                      
                    </div>
                    <div class="form-row control-group row-fluid">                      
                     <div class="controls span8">
                        <input type="text" id="normal-field" value="<?=set_value('name', $price)?>" name="price" class="row-fluid" placeholder="Course Price">
                     </div>                      
                    </div>
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <textarea name="description" cols="40" rows="15"  class="redactor" id="elastic-textarea"></textarea>
                      </div>
                    </div>
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <textarea name="excerpt" cols="40" rows="5" class="row-fluid autogrow" id="elastic-textarea" placeholder="Add Excerpt Here...."></textarea>
                      </div>
                    </div>
                    <h1>SEO Information</h1>
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <label for="slug">URL Keyword </label>
                        <input type="text" name="slug" value="<?=set_value('slug', $slug)?>" class="span8">
                        <label for="seo_title">Title Tag </label>
                        <input type="text" name="seo_title" value="<?=set_value('seo_title', $seo_title)?>" class="span8">
                        <label for="meta">Meta Tags <i>ex. &lt;meta name="description" content="We sell products that help you" /&gt;</i></label>
                        <textarea name="meta"  cols="40" rows="10" class="row-fluid autogrow" id="elastic-textarea"><?=set_value('meta', html_entity_decode($meta))?></textarea>
                      </div>
                    </div>
                    
                  </div>
                  <div class="form-row control-group row-fluid ">
                  <h1>Course Status</h1>
                  <div class="controls span3">
                    <div class="row-fluid">
                      <div class="pull-left">
                        <label class="radio off">
                          <input type="radio" name="toggle" id="toggle1-off" value="off" checked="">
                        </label>
                        <label class="radio on">
                          <input type="radio" name="toggle" id="toggle1-on" value="on">
                        </label>
                        <div class="toggle">
                          <div class="yes"> ON </div>
                          <div class="switch"> </div>
                          <div class="no"> OFF </div>
                        </div>
                      </div>                      
                    </div>
                  </div>
                </div>
                </div>
                
                <!-- TAB ONE END-->
                <!-- TAB TWO START-->
                <div class="tab-pane fade" id="categories">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <label class="control-label span3" for="inputEmail"><span class="help-block"></span></label>
                      <div class="controls span14">
                        <select data-placeholder="Choose Multiple Categories For Course" class="chzn-select" name="category_list" multiple="" tabindex="5">
                        <? if(isset($all_categories)){  ?>
                        <?php  foreach ($all_categories as $file):?>
                          	<option value="<?=$file['id']?>"><?=$file['name']?></option>
                         <?php endforeach; ?>
                         <? } ?>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- TAB TWO END-->
                <!-- TAB THREE START-->
                <div class="tab-pane fade" id="options">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                      
                       <select data-placeholder="Choose Multiple Categories For Course" class="chzn-select" id="option_options" >
								<option value=""><?php echo lang('select_option_type')?></option>
								<option value="checklist"><?php echo lang('checklist');?></option>
								<option value="radiolist"><?php echo lang('radiolist');?></option>
								<option value="droplist"><?php echo lang('droplist');?></option>
								<option value="textfield"><?php echo lang('textfield');?></option>
								<option value="textarea"><?php echo lang('textarea');?></option>                                
                        </select>
                        <input id="add_option" class="btn" type="button" value="<?php echo lang('add_option');?>" style="margin:0px;"/>
                      </div>
                      <div class="row">
                            <div class="span8">
                                <table class="table table-striped"  id="options_container">
                                    <?php
                                    $counter	= 0;
                                    if(!empty($product_options))
                                    
                                    {
                                        foreach($product_options as $po)
                                        {
                                            $po	= (object)$po;
                                            if(empty($po->required)){$po->required = false;}
        
                                            add_option($po, $counter);
                                            $counter++;
                                        }
                                    }?>
                                        
                                </table>
                            </div>
                        </div>                    
                    </div>
                  </div>
                </div>
                <!-- TAB THREE END-->
                <!-- TAB FOUR START-->
                <div class="tab-pane fade" id="related-products">
                  <div class="content">
                    <div class="form-row control-group row-fluid">
                      <div class="controls span14">
                        <select data-placeholder="Choose Multiple Related Courses" class="chzn-select" name="product_list" multiple="" tabindex="5">
							<? if(isset($all_products)){  ?>
							<?php  foreach ($all_products as $file):?>
                                	<option value="<?=$file['id']?>"><?=$file['name']?></option>
                             <?php endforeach; ?>
                            <? } ?>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- TAB FOUR END-->
                <!-- TAB FIVE START-->
                <div class="tab-pane fade" id="images">
                  <div class="content">
                    <form action="http://localhost/ukopen/admin/products/product_image_upload" class="form-horizontal row-fluid" enctype="multipart/form-data" method="post" accept-charset="utf-8">
                      <div class="form-row control-group row-fluid">
                        <label class="control-label span3" for="search-input">File upload</label>
                        <div class="controls span7">
                          <div class="input-append row-fluid">
                            <input type="file" class="spa1n6 fileinput" name="userfile" value="" id="search-input">
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <!-- TAB FIVE END-->
              </div>
             
              <button class="btn btn-inverse btn-block btn-large" rel="tooltip" data-placement="top" data-original-title="Save Course Info"><b><?php echo lang('form_save');?></b></button>
              
            </div>
            <!-- End .content -->
          </div>
          <!-- End  .box -->
        </div>
        
      </div>
      
    </form>
   </div>
    <!-- End #container --> 
  </div>
  <script type="text/javascript">
	
	$( "#add_option" ).click(function(){
		if($('#option_options').val() != '')
		{
			add_option($('#option_options').val());
			$('#option_options').val('');
		}
	});
	
	function add_option(type)
	{
		//increase option_count by 1
		option_count++;
		
		<?php
		$value			= array(array('name'=>'', 'value'=>'', 'weight'=>'', 'price'=>'', 'limit'=>''));
		$js_textfield	= (object)array('name'=>'', 'type'=>'textfield', 'required'=>false, 'values'=>$value);
		$js_textarea	= (object)array('name'=>'', 'type'=>'textarea', 'required'=>false, 'values'=>$value);
		$js_radiolist	= (object)array('name'=>'', 'type'=>'radiolist', 'required'=>false, 'values'=>$value);
		$js_checklist	= (object)array('name'=>'', 'type'=>'checklist', 'required'=>false, 'values'=>$value);
		$js_droplist	= (object)array('name'=>'', 'type'=>'droplist', 'required'=>false, 'values'=>$value);
		
		if (function_exists('add_option')) {
		?>
		
		if(type == 'textfield')
		{
			$('#options_container').append('<?php add_option($js_textfield, "'+option_count+'");?>');
		}
		else if(type == 'textarea')
		{
			$('#options_container').append('<?php add_option($js_textarea, "'+option_count+'");?>');
		}
		else if(type == 'radiolist')
		{
			$('#options_container').append('<?php add_option($js_radiolist, "'+option_count+'");?>');
		}
		else if(type == 'checklist')
		{
			$('#options_container').append('<?php add_option($js_checklist, "'+option_count+'");?>');
		}
		else if(type == 'droplist')
		{
			$('#options_container').append('<?php add_option($js_droplist, "'+option_count+'");?>');
		}
		<? } ?>
	}
	
	function add_option_value(option)
	{
		
		option_value_count++;
		<?php
		$js_po	= (object)array('type'=>'radiolist');
		$value	= (object)array('name'=>'', 'value'=>'', 'weight'=>'', 'price'=>'');
		
		if (function_exists('add_option')) {
		?>
		$('#option-items-'+option).append('<?php add_option_value($js_po, "'+option+'", "'+option_value_count+'", $value);?>');
		
		<? } ?>
	}
	
	$(document).ready(function(){
		$('body').on('click', '.option_title', function(){
			$($(this).attr('href')).slideToggle();
			return false;
		});
		
		$('body').on('click', '.delete-option-value', function(){
			if(confirm('<?php echo lang('confirm_remove_value');?>'))
			{
				$(this).closest('.option-values-form').remove();
			}
		});
		
		
		
		$('#options_container').sortable({
			axis: "y",
			items:'tr',
			handle:'.handle',
			forceHelperSize: true,
			forcePlaceholderSize: true
		});
		
		$('.option-items').sortable({
			axis: "y",
			handle:'.handle',
			forceHelperSize: true,
			forcePlaceholderSize: true
		});
	});
	</script>
	<style type="text/css">
		.option-form {
			display:none;
			margin-top:10px;
		}
		.option-values-form
		{
			background-color:#fff;
			padding:6px 3px 6px 6px;
			-webkit-border-radius: 3px;
			-moz-border-radius: 3px;
			border-radius: 3px;
			margin-bottom:5px;
			border:1px solid #ddd;
		}
		
		.option-values-form input {
			margin:0px;
		}
		.option-values-form a {
			margin-top:3px;
		}
	</style>

<?php
/***********  Some Important Function Area*********************/

function add_option($po, $count)
{
	ob_start();
	?>
	<tr id="option-<?php echo $count;?>">
		<td>
			<a class="handle btn btn-mini"><i class="icon-align-justify"></i></a>
			<strong><a class="option_title" href="#option-form-<?php echo $count;?>"><?php echo $po->type;?> <?php echo (!empty($po->name))?' : '.$po->name:'';?></a></strong>
			<button type="button" class="btn btn-mini btn-danger pull-right" onClick="remove_option(<?php echo $count ?>);"><i class="icon-trash icon-white"></i></button>
			<input type="hidden" name="option[<?php echo $count;?>][type]" value="<?php echo $po->type;?>" />
			<div class="option-form" id="option-form-<?php echo $count;?>">
				<div class="row-fluid">
				
					<div class="span10">
						<input type="text" class="span10" placeholder="<?php echo lang('option_name');?>" name="option[<?php echo $count;?>][name]" value="<?php echo $po->name;?>"/>
					</div>
					
					<div class="span2" style="text-align:right;">
						<input class="checkbox" type="checkbox" name="option[<?php echo $count;?>][required]" value="1" <?php echo ($po->required)?'checked="checked"':'';?>/> <?php echo lang('required');?>
					</div>
				</div>
				<?php if($po->type!='textarea' && $po->type!='textfield'):?>
				<div class="row-fluid">
					<div class="span12">
						<a class="btn" onClick="add_option_value(<?php echo $count;?>);"><?php echo lang('add_item');?></a>
					</div>
				</div>
				<?php endif;?>
				<div style="margin-top:10px;">

					<div class="row-fluid">
						<?php if($po->type!='textarea' && $po->type!='textfield'):?>
						<div class="span1">&nbsp;</div>
						<?php endif;?>
						<div class="span3"><strong>&nbsp;&nbsp;<?php echo lang('name');?></strong></div>
						<div class="span2"><strong>&nbsp;<?php echo lang('value');?></strong></div>
						<div class="span2"><strong>&nbsp;<?php echo lang('weight');?></strong></div>
						<div class="span2"><strong>&nbsp;<?php echo lang('price');?></strong></div>
						<div class="span2"><strong>&nbsp;<?php echo ($po->type=='textfield')?lang('limit'):'';?></strong></div>
					</div>
					<div class="option-items" id="option-items-<?php echo $count;?>">
					<?php if($po->values):?>
						<?php
						foreach($po->values as $value)
						{
							$value = (object)$value;
							add_option_value($po, $count, $GLOBALS['option_value_count'], $value);
							$GLOBALS['option_value_count']++;
						}?>
					<?php endif;?>
					</div>
				</div>
			</div>
		</td>
	</tr>
	
	<?php
	$stuff = ob_get_contents();

	ob_end_clean();
	
	echo replace_newline($stuff);
}

function add_option_value($po, $count, $valcount, $value)
{
	ob_start();
	?>
	<div class="option-values-form">
		<div class="row-fluid">
			<?php if($po->type!='textarea' && $po->type!='textfield'):?><div class="span1"><a class="handle btn btn-mini" style="float:left;"><i class="icon-align-justify"></i></a></div><?php endif;?>
			<div class="span3"><input type="text" class="span12" name="option[<?php echo $count;?>][values][<?php echo $valcount ?>][name]" value="<?php echo $value->name ?>" /></div>
			<div class="span2"><input type="text" class="span12" name="option[<?php echo $count;?>][values][<?php echo $valcount ?>][value]" value="<?php echo $value->value ?>" /></div>
			<div class="span2"><input type="text" class="span12" name="option[<?php echo $count;?>][values][<?php echo $valcount ?>][weight]" value="<?php echo $value->weight ?>" /></div>
			<div class="span2"><input type="text" class="span12" name="option[<?php echo $count;?>][values][<?php echo $valcount ?>][price]" value="<?php echo $value->price ?>" /></div>
			<div class="span2">
			<?php if($po->type=='textfield'):?><input class="span12" type="text" name="option[<?php echo $count;?>][values][<?php echo $valcount ?>][limit]" value="<?php echo $value->limit ?>" />
			<?php elseif($po->type!='textarea' && $po->type!='textfield'):?>
				<a class="delete-option-value btn btn-danger btn-mini pull-right"><i class="icon-trash icon-white"></i></a>
			<?php endif;?>
			</div>
		</div>
	</div>
	<?php
	$stuff = ob_get_contents();

	ob_end_clean();

	echo replace_newline($stuff);
}
//this makes it easy to use the same code for initial generation of the form as well as javascript additions
function replace_newline($string) {
  return trim((string)str_replace(array("\r", "\r\n", "\n", "\t"), ' ', $string));
}
?>
<script type="text/javascript">
//<![CDATA[
var option_count		= <?php echo $counter?>;
var option_value_count	= <?php echo $GLOBALS['option_value_count'];?>
//]]>
</script>
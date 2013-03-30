<?php
function list_categories($cats, $product_categories, $sub='') {

	foreach ($cats as $cat):?>

<option value="<?php echo $cat['category']->id;?>"><?php echo  $sub.$cat['category']->name; ?></option>
<?php
			if (sizeof($cat['children']) > 0)
			{
				$sub2 = str_replace('&rarr;&nbsp;', '&nbsp;', $sub);
				$sub2 .=  '&nbsp;&nbsp;&nbsp;&rarr;&nbsp;';
				list_categories($cat['children'], $product_categories, $sub2);
			}
			endforeach;
}
//set "code" for searches
if(!$code)
{
	$code = '';
}
else
{
	$code = '/'.$code;
}
function sort_url($lang, $by, $sort, $sorder, $code, $admin_folder)
{
	if ($sort == $by)
	{
		if ($sorder == 'asc')
		{
			$sort	= 'desc';
			$icon	= ' <i class="icon-chevron-up"></i>';
		}
		else
		{
			$sort	= 'asc';
			$icon	= ' <i class="icon-chevron-down"></i>';
		}
	}
	else
	{
		$sort	= 'asc';
		$icon	= '';
	}
		

	$return = site_url($admin_folder.'/products/index/'.$by.'/'.$sort.'/'.$code);
	
	echo '<a href="'.$return.'">'.lang($lang).$icon.'</a>';

}

if(!empty($term)):
	$term = json_decode($term);
	if(!empty($term->term) || !empty($term->category_id)):?>
<div class="alert alert-info"> <?php echo sprintf(lang('search_returned'), intval($total));?> </div>
<?php endif;?>
<?php endif;?>
<script type="text/javascript">
function areyousure()
{
	return confirm('<?php echo lang('confirm_delete_product');?>');
}
 
function selectGroup(childs)
{
	   var checkbox = document.getElementById('check_all_courses');
	   if(childs!=0)
	   {
			if(checkbox.checked)
			{
				 for(i=1; i<=childs; i++)
				 {
					  //alert(document.getElementById("child_"+i).value);
					 // document.getElementById("child_"+i).checked=true;
					  $('.checker > span').addClass('checked');
					  $("#child_"+i).attr('checked','checked');
				 }
			}
			else
			{
				 for(i=1; i<=childs; i++)
				 {
					  $('.checker > span').removeClass('checked');
					  $("#child_"+i).removeAttr('checked','checked');
				 }
			}
  	   }
}  
</script>
<style type="text/css">
	.pagination {
		margin:0px;
		margin-top:-3px;
	}
</style>
<div id="main" style="min-height:1000px">
<div class="container">
<? include_once('includes/admin_profile.php');?>
<!--=======Search Panel Start=======-->
<div class="box paint color_18">
  <div class="title">
    <h4> <i class="icon-book"></i><span>Search Courses</span> </h4>
  </div>
  <div class="content"> <?php echo form_open($this->config->item('admin_folder').'/products/index', 'class="form-horizontal row-fluid" ');?>
    <div class="form-row control-group row-fluid">
      <div class="controls span5">
        <input type="text" id="with-tooltip" rel="tooltip" data-placement="top" name="term" data-original-title="Search By Course Name, Sku, Keyword" placeholder="<?php echo lang('search_term');?>" class="row-fluid">
      </div>
      <div class="controls span5">
        <?php
				if(!empty($categories))
				{
					echo '<select name="category_id"   data-placeholder="Filter By Category..." class="chzn-select" id="default-select">';
					echo '<option value="">'.lang('filter_by_category').'</option>';
					list_categories($categories);
					echo '</select>';
					
				}
		?>
      </div>
      <div class="controls span2">
        <button class="btn" rel="tooltip" data-placement="top" data-original-title="Search" name="submit" value="search"><?php echo lang('search')?></button>
        <a class="btn" rel="tooltip" data-placement="top" data-original-title="Reset" href="<?php echo site_url($this->config->item('admin_folder').'/products/index');?>">Reset</a> </div>
      </form>
    </div>
  </div>
  <!--=======Search Panel End=======-->
  <!--=======Upload Panel Start=======-->
  <div id="main_container">
    <div class="row-fluid">
      <div class="box paint color_18">
        <div class="title">
          <h4> <span>Upload Courses Panel <small>(CSV File)</small></span> </h4>
          <?php
          		if($this->session->flashdata('file_error'))
				{
					echo $this->session->flashdata('file_error');
				}
				if($this->session->flashdata('upload_error'))
				{
					$upload_error_array  = $this->session->flashdata('upload_error');
					foreach($upload_error_array as $ers)
					{
						echo 'ERROR: '.$ers."<br>";
					}
				}
		  ?>
        </div>
        <div class="title">
          <h4><small><a href="products/download_csv_template" title="Sample Template">Download Sample CSV File</a></small></span> </h4>
        </div>
        <div class="form-row control-group row-fluid">
          <div style="margin-left:50px;" class="controls span7">
            <div class="input-append row-fluid"> <?php echo form_open($this->config->item('admin_folder').'/products/save_bulk_products', array('enctype'=>'multipart/form-data'));?>
              <table  id="datatable_example" class="responsive table table-striped table-bordered">
                <tr>
                  <td><input type="file" name="product_file" class="spa1n6 fileinput" id="search-input">
                  </td>
                  <td><input type="submit" class="btn" name="upload_course" value="Save" />
                  </td>
                </tr>
              </table>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--=======Upload Panel End=======-->
  <div id="main_container">
    <div class="row-fluid">
      <div class="box paint color_18">
        <div class="title">
          <h4> <span>Manage Courses<small>(column sorting, live search, pagination)</small></span> </h4>
        </div>
        <!-- End .title -->
        <!-- Paginatin End -->
        <div class="content top"> <?php echo form_open($this->config->item('admin_folder').'/products/bulk_save', array('id'=>'bulk_form'));?>
          <?php
            	if($this->session->flashdata('remove_product_err'))
				{
					echo $this->session->flashdata('remove_product_err');
				}			
			?>
          <div class="form-row control-group row-fluid">
            <div class="btn-group pull-right">
              <button class="btn" href="#"><i class="icon-remove-sign"></i> <?php echo lang('bulk_remove');?></button>
              <button  class="btn" href="#"><i class="icon-ok"></i> <?php echo lang('bulk_save');?></button>
              <a class="btn" style="font-weight:normal;"href="<?php echo site_url($this->config->item('admin_folder').'/products/form');?>"><i class="icon-plus-sign"></i> <?php echo lang('add_new_product');?></a> &nbsp; </div>
          </div>
          <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
            <thead>
              <tr>
                <th class="jv no_sort"> <label class="checkbox ">
                  <input type="checkbox" onclick="selectGroup(<?=count($products)?>)" id="check_all_courses" name="remove_products" value="remove_products">
                  </label>
                </th>
                <?php /*?><th><?php echo sort_url('sku', 'sku', $order_by, $sort_order, $code, $this->config->item('admin_folder'));?></th><?php */?>
                <th><?php echo sort_url('name', 'name', $order_by, $sort_order, $code, $this->config->item('admin_folder'));?></th>
                <th><?php echo sort_url('price', 'price', $order_by, $sort_order, $code, $this->config->item('admin_folder'));?></th>
                <th><?php echo sort_url('saleprice', 'saleprice', $order_by, $sort_order, $code, $this->config->item('admin_folder'));?></th>
                <?php /*?><th><?php echo sort_url('quantity', 'quantity', $order_by, $sort_order, $code, $this->config->item('admin_folder'));?></th><?php */?>
                <th><?php echo sort_url('enabled', 'enabled', $order_by, $sort_order, $code, $this->config->item('admin_folder'));?></th>
                <th class="ms no_sort ">Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <? $i = 0;?>
                <?php echo (count($products) < 1)?'<tr><td style="text-align:center;" colspan="7">'.lang('no_products').'</td></tr>':''?>
                <?php foreach ($products as $product):?>
                <? $i++;?>
              <tr>
                <td><label class="checkbox ">
                  <input type="checkbox" id="child_<?=$i?>" name="courses[]"  value="<?=$product->id?>">
                  </label>
                </td>
                <?php /*?><td><?php echo form_input(array('name'=>'product['.$product->id.'][sku]','value'=>form_decode($product->sku), 'class'=>'span7'));?></td><?php */?>
                <td><?php echo form_input(array('name'=>'product['.$product->id.'][name]','value'=>form_decode($product->name), 'class'=>'span12'));?></td>
                <td><?php echo form_input(array('name'=>'product['.$product->id.'][price]', 'value'=>set_value('price', $product->price), 'class'=>'span7'));?></td>
                <td><?php echo form_input(array('name'=>'product['.$product->id.'][saleprice]', 'value'=>set_value('saleprice', $product->saleprice), 'class'=>'span7'));?></td>
                <?php /*?><td><?php echo ((bool)$product->track_stock)?form_input(array('name'=>'product['.$product->id.'][quantity]', 'value'=>set_value('quantity', $product->quantity), 'class'=>'span7')):'N/A';?></td><?php */?>
                <td><?php
					 	$options = array(
			                  '1'	=> lang('enabled'),
			                  '0'	=> lang('disabled')
			                );

						echo form_dropdown('product['.$product->id.'][enabled]', $options, set_value('enabled',$product->enabled), 'class="span12"');
					?>
                </td>
                <td class="ms"><div class="btn-group1"> <a class="btn btn-small"  rel="tooltip" data-placement="left" data-original-title="<?php echo lang('edit');?>" href="<?php echo  site_url($this->config->item('admin_folder').'/products/form/'.$product->id);?>"> <i class="gicon-edit"></i> </a> <a class="btn btn-small" rel="tooltip" data-placement="top" data-original-title="View"> <i class="gicon-eye-open"></i> </a> <a class="btn btn-small" rel="tooltip" data-placement="top" data-original-title="<?php echo lang('copy');?>" href="<?php echo  site_url($this->config->item('admin_folder').'/products/form/'.$product->id.'/1');?>"> <i class="gicon-file"></i> </a> <a class="btn  btn-small" rel="tooltip" data-placement="bottom" data-original-title="<?php echo lang('delete');?>" href="<?php echo  site_url($this->config->item('admin_folder').'/products/delete/'.$product->id);?>" onclick="return areyousure();"> <i class="gicon-remove "></i> </a> </div></td>
              </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
          </form>
        </div>
        <div class="span4"> <?php //echo $this->pagination->create_links();?> &nbsp; </div>
        <!-- End .content -->
      </div>
      <!-- End box -->
    </div>
    <!-- End .row-fluid -->
  </div>
  <!-- End #container -->
</div>

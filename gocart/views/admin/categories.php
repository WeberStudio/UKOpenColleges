<script type="text/javascript">
function areyousure()
{
	return confirm('<?php echo lang('confirm_trash_category');?>');
}
</script>
<?php 
define('ADMIN_FOLDER', $this->config->item('admin_folder'));

		function sort_url($heading, $by, $sort, $sorder, $admin_folder)
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
				
		
			$return = site_url($admin_folder.'/categories/index/'.$by.'/'.$sort);
			
			echo '<a href="'.$return.'">'.$heading.$icon.'</a>';
		
		}

		function list_categories($cats, $sub='') {
			
			foreach ($cats as $cat):?>
			<tr>
				<td><?php echo  $cat['category']->id; ?></td>
				<td><?php echo  $sub.$cat['category']->name; ?></td>
                <td>10</td>
                <td><?php if($cat['category']->publish_by_super=='1'){ echo  'Published'; }else { echo  'Unpublish'; } ?></td>
                <td></td>
                <td><?php echo  date("Y-m-d", strtotime($cat['category']->publish_date)); ?></td>
                <td>
					<div class="btn-group" style="float:right">

						<a class="btn" href="<?php echo  site_url(ADMIN_FOLDER.'/categories/form/'.$cat['category']->id);?>"><i class="icon-pencil"></i> <?php echo lang('edit');?></a>

						<?php /*?><a class="btn" href="<?php echo  site_url(ADMIN_FOLDER.'/categories/organize/'.$cat['category']->id);?>"><i class="icon-move"></i> <?php echo lang('organize');?></a><?php */?>
						
						<a class="btn btn-danger" href="<?php echo  site_url(ADMIN_FOLDER.'/categories/trash/'.$cat['category']->id);?>" onClick="return areyousure();"><i class="icon-trash"></i> <?php echo lang('trash');?></a>
					</div>
				</td>
			</tr>
			<?php
			if (sizeof($cat['children']) > 0)
			{
				$sub2 = str_replace('&rarr;&nbsp;', '&nbsp;', $sub);
				$sub2 .=  '&nbsp;&nbsp;&nbsp;&rarr;&nbsp;';
				list_categories($cat['children'], $sub2);
			}
			endforeach;
		}
?>
<div id="main" style="min-height:1000px">
  <div class="container">
    <? include_once('includes/admin_profile.php');?>
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
		
		if(function_exists('validation_errors') && validation_errors() != '')
		{
			$error	= validation_errors();
		}
		?>
	
          <div id="js_error_container" class="alert alert-error" style="display:none;">
            <p id="js_error"></p>
          </div>
          <div id="js_note_container" class="alert alert-note" style="display:none;"> </div>
          <?php if (!empty($message)): ?>
          <div class="alert alert-success"> <a class="close" data-dismiss="alert">x</a> <?php echo $message; ?> </div>
          <?php endif; ?>
          <?php if (!empty($error)): ?>
          <div class="alert alert-error"> <a class="close" data-dismiss="alert">x</a> <?php echo $error; ?> </div>
          <?php endif; ?>
    <div id="main_container">
      <div class="row-fluid ">
        <div class="span12">
          <div class="box paint color_18">
            <div class="title">
              <h4> <i class=" icon-bar-chart"></i><span>Categories
                <a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/categories/form'); ?>"><i class="icon-plus-sign"></i> <?php echo lang('add_new_category');?></a>
                </span> </h4>
            </div>
            <!-- End .title -->
            <div class="content top">
              <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
                <thead>
                  <tr>
                    <th><?php echo sort_url(lang('category_id'),'id', $order_by, $sort_order, $this->config->item('admin_folder'));?></th>
                    <th><?php echo sort_url(lang('name'),'name', $order_by, $sort_order, $this->config->item('admin_folder'));?></th>
                    <th class="ue no_sort">Courses Count</th>
                    <th>Status</th>
                    <th></th>
                    <th><?php echo sort_url(lang('publish_date'),'publish_date', $order_by, $sort_order, $this->config->item('admin_folder'));?></th>
                    <th class="ms no_sort ">Actions </th>
                  </tr>
                </thead>
                <tbody>
                <?php
                  list_categories($categories);
				?>
                </tbody>
              </table>
              <div class="row-fluid control-group">
                <div class="pull-left span6 " action="#"> </div>
                <div class="span6">
                  <div class="pagination pull-right ">
                    <ul>
                      <li><a href="#">Prev</a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">Next</a></li>
                    </ul>
                  </div >
                </div>
              </div>
            </div>
            <!-- End row-fluid -->
          </div>
          <!-- End .content -->
        </div>
        <!-- End box -->
      </div>
      <!-- End .span12 -->
    </div>
    <!-- End .row-fluid -->
  </div>
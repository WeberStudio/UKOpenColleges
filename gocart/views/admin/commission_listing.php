<script type="text/javascript">
function areyousure()
{
	return confirm('Are you sure to delete the record?');
}

</script>
<div id="main" style="min-height:1000px">
  <div class="container">
    <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
     <div id="main_container">
      <div class="row-fluid ">
        <div class="span12">
          <div class="box paint color_18">
            <div class="title">
             <h4> <i class=" icon-bar-chart"></i><span>Commission Listing 
             
	            <a class="btn" href="<?php echo site_url($this->config->item('admin_folder')."/commission/form/"); ?>"><i class="icon-plus-sign"></i>Add New Commision <?php //echo lang('add_new_customer');?></a>
                     </span></h4>
                
<div class="content top">
<div class="content"> 
<table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
	<thead>
		<tr>
			<?php
			$by ="";
			if($by=='ASC')
			{
				$by='DESC';
			}
			else
			{
				$by='ASC';
			}
			?>
			
			<th><a href="<?php //echo site_url($this->config->item('admin_folder').'/customers/index/lastname/');?>/<?php //echo ($field == 'lastname')?$by:'';?>"><?php //echo lang('lastname');?>
				<?php //if($field == 'lastname'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?> Commision Level</a></th>
			
			<th><a href="<?php //echo site_url($this->config->item('admin_folder').'/customers/index/firstname/');?>/<?php //echo ($field == 'firstname')?$by:'';?>"><?php //echo lang('firstname');?>
				<?php //if($field == 'firstname'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?>Commision Rate</a></th>
			
			<th><a href="<?php //echo site_url($this->config->item('admin_folder').'/customers/index/email/');?>/<?php //echo ($field == 'email')?$by:'';?>"><?php //echo lang('email');?>
				<?php //if($field == 'email'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?> Persentage</a></th>
			<th> Active<?php //echo lang('active');?></th>
			<th>Actions</th>
			
		</tr>
	</thead>
	
	<tbody>
		
		<?php echo (count($commissions) < 1)?'<tr><td style="text-align:center;" colspan="5">'.lang('no_customers').'</td></tr>':''?>
<?php foreach ($commissions as $commission):?>
		<tr>
			<?php /*<td style="width:16px;"><?php echo  $customer->id; ?></td>*/?>
			<td><?php echo  $commission->comm_level; ?></td>
			<td class="gc_cell_left"> <?php echo  $commission->comm_rate; ?></td>
			<td><?php if($commission->comm_rate_mode == ''){ echo 'Fix'; }else{ echo  $commission->comm_rate_mode;} ?></td>
			<td><?php echo  $commission->comm_active; ?></td>
			<td>
				<div class="btn-group" >
					<a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/commission/form/'.$commission->comm_id); ?>"><i class="icon-pencil"></i> Edit </a>				
					<a class="btn btn-danger" href="<?php echo site_url($this->config->item('admin_folder').'/commission/delete/'.$commission->comm_id); ?>" onclick="return areyousure();"><i class="icon-trash"></i> Delete</a>
				</div>
			</td>
		</tr>
<?php endforeach;
		//if($page_links != ''):?>
		<tr><td colspan="5" style="text-align:center"><?php //echo $page_links;?></td></tr>
		<?php //endif;?>
	</tbody>
</table>
</div>
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
  </div>
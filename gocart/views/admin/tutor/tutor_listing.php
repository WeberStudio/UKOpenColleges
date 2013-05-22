<script type="text/javascript">
function areyousure()
{
	return confirm('<?php echo lang('confirm_delete_tutor');?>');
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
             <h4> <i class=" icon-bar-chart"></i><span>Tutor Listing 
             
	            <a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/tutor/form'); ?>"><i class="icon-plus-sign"></i>Add New Tutor <?php //echo lang('add_new_customer');?></a>
                     </span></h4>
                
<div class="content top"> 
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
			<th>ID</th>
			<th><a href="<?php echo site_url($this->config->item('admin_folder').'/tutor/index/lastname/');?>/<?php echo ($field == 'lastname')?$by:'';?>"><?php echo lang('lastname');?>
				<?php if($field == 'lastname'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?></a></th>
			
			<th><a href="<?php echo site_url($this->config->item('admin_folder').'/tutor/index/firstname/');?>/<?php echo ($field == 'firstname')?$by:'';?>"><?php echo lang('firstname');?>
				<?php if($field == 'firstname'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?></a></th>
			
			<th><a href="<?php echo site_url($this->config->item('admin_folder').'/tutor/index/email/');?>/<?php echo ($field == 'email')?$by:'';?>"><?php echo lang('email');?>
				<?php if($field == 'email'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?> </a></th>
			<th> <?php echo lang('active');?></th>
			<th>Actions</th>
		</tr>
	</thead>
	
	<tbody>
		
		<?php echo (count($tutors) < 1)?'<tr><td style="text-align:center;" colspan="5">'.lang('no_tutors').'</td></tr>':''?>
<?php foreach ($tutors as $tutor):?>
		<tr>
			<td style="width:16px;"><?php echo  $tutor->tutor_id; ?></td>
			<td><?php echo  $tutor->lastname; ?></td>
			<td class="gc_cell_left"> <?php echo  $tutor->firstname; ?></td>
			<td><?php echo  $tutor->email; ?></td>
			<td> 
				<?php if($tutor->status == 1)
				{
					echo 'Yes';
				}
				else
				{
					echo 'No';
				}
				?>
			</td>
			<td>
				<div class="btn-group" style="float:right">
					<a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/tutor/form/'.$tutor->tutor_id);  ?>"><i class="icon-pencil"></i><?php echo lang('edit');?></a>
					
					
					
					<a class="btn btn-danger" href="<?php echo site_url($this->config->item('admin_folder').'/tutor/delete/'.$tutor->tutor_id); ?>" onclick="return areyousure();"><i class="icon-trash"></i> <?php echo lang('delete');?></a>
				</div>
			</td>
		</tr>
<?php endforeach;
		?>
	</tbody>
</table>
			<div class="row-fluid control-group">
                <div class="span6">
                  <div class="pagination pull-right "> <?php echo $this->pagination->create_links();?> &nbsp; </div>
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
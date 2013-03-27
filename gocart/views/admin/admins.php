<script type="text/javascript">
function areyousure()
{
    return confirm('<?php echo lang('confirm_delete');?>');
}
</script>
<?php define('ADMIN_FOLDER', $this->config->item('admin_folder'));
function list_admin($admins, $current_admin_id) 
{ 
	foreach ($admins as $admin){
	?>
			<tr>
				<td><?php  echo $admin->firstname;?></td>
				<td><?php echo $admin->lastname; ?></td>
				<td><?php echo $admin->email; ?></td>
				<td><?php echo $admin->access; ?></td>             
				<td>
                    <div class="btn-group" style="float:left;">
                    	<a class="btn" href="<?php echo site_url(ADMIN_FOLDER.'/admin/form/'.$admin->id);?>"><i class="icon-pencil"></i> <?php echo lang('edit');?></a>    
						<?php                                
                        if ($current_admin_id != $admin->id){ ?>
                        <a class="btn btn-danger" href="<?php echo site_url(ADMIN_FOLDER.'/admin/delete/'.$admin->id); ?>" onClick="return areyousure();"><i class="icon-trash icon-white"></i> <?php echo lang('delete');?></a>
                            <?php } ?>
                    </div> 
				</td>  
			</tr>
	<?php 
	  }            
}
?>
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
      <div class="row-fluid ">
        <div class="span12">
          <div class="box paint color_18">
            <div class="title">                
            <h4> <i class=" icon-bar-chart"></i><span>Administrator 
                 <a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/admin/form'); ?>" >
                        <i class="icon-plus-sign"></i> <?php echo lang('add_new_admin');?></a>
                       </span></h4>
                 </div>           <!-- End .title --> 
      <div class="content top">
     <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
     <thead>
         <tr>
            <th class="no_sort"><?php echo lang('firstname');?></th>
            <th class="no_sort to_hide_phone"><?php echo lang('lastname');?></th>
            <th class="ue no_sort"><?php echo lang('email');?></th>
            <th class="ue no_sort"><?php echo lang('access');?></th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
    <?php
		$current_admin    = $this->session->userdata('admin');
		$current_admin_id = $current_admin['id'];
		list_admin($admins, $current_admin_id);
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
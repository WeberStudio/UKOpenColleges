<div id="main" style="min-height:1000px">
  <div class="container">
    <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
     <div id="main_container">
      <div class="row-fluid ">
        <div class="span12">
          <div class="box paint color_18">
            <div class="title">
             <h4> <i class=" icon-bar-chart"></i><span>Coupon Listing 
             
	            <a class="btn" href="<?php echo site_url('/coupon/form'); ?>"><i class="icon-plus-sign"></i>Add New Coupon <?php //echo lang('add_new_customer');?></a>
                     </span></h4>
                
<div class="content top"> 
<table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
	<thead>
		<tr>
			
			
			<th><?php echo lang('code');?></th>
			<th><?php echo lang('usage');?></th>
			<th align="right"> Active<?php //echo lang('active');?></th>
			
		</tr>
	</thead>
	
	<tbody>

		<tr>
			<?php /*<td style="width:16px;"><?php echo  $customer->id; ?></td>*/?>
			<td>code place<?php //echo  $customer->lastname; ?></td>
			<td class="gc_cell_left">usage place <?php //echo  $customer->firstname; ?></td>
			<td>
				<div class="btn-group" align="right">
					<a class="btn" href="<?php //echo site_url('/tutor/edit');  ?>"><i class="icon-pencil"></i> Edit <?php //echo lang('edit');?></a>
					
					
					
					<a class="btn btn-danger" href="<?php //echo site_url($this->config->item('admin_folder').'/customers/delete/'.$customer->id); ?>" onclick="return areyousure();"><i class="icon-trash icon-white"></i> <?php //echo lang('delete');?> Delete</a>
				</div>
			</td>
		</tr>
<?php //endforeach;
		//if($page_links != ''):?>
		<tr><td colspan="5" style="text-align:center"><?php //echo $page_links;?></td></tr>
		<?php //endif;?>
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
  </div>
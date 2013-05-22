<script type="text/javascript">
function areyousure()
{
	return confirm('<?php echo lang('confirm_delete_order');?>');
}
</script>
<div id="main" style="min-height:1000px">
  <div class="container">
    <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
     <div id="main_container">
      <div class="row-fluid ">
        <div class="span12">
          <div class="box paint color_1">
            <div class="title">
             <h4> <i class=" icon-bar-chart"></i>
			 <span>Order Listing
			 <a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/tutor/form'); ?>"><i class="gicon-search icon-white"></i><?php echo lang('search')?></a>
			 <input type="text" id="datepicker1" value="Start Date" name="" style="width:155px; height: 26px; padding: 0px; margin-bottom: 0px;">
			 <input type="text" id="datepicker2" value="Start Date" name="" style="width:155px; height: 26px; padding: 0px; margin-bottom: 0px;">
			 </span></h4>
               

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
				<?php //if($field == 'lastname'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?>Order </a></th>
			
			<th><a href="<?php //echo site_url($this->config->item('admin_folder').'/customers/index/firstname/');?>/<?php //echo ($field == 'firstname')?$by:'';?>"><?php //echo lang('firstname');?>
				<?php //if($field == 'firstname'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?>Bill To</a></th>
			
			<th style=""><a href="<?php //echo site_url($this->config->item('admin_folder').'/customers/index/email/');?>/<?php //echo ($field == 'email')?$by:'';?>"><?php //echo lang('email');?>
				<?php //if($field == 'email'){ echo ($by == 'ASC')?'<i class="icon-chevron-up"></i>':'<i class="icon-chevron-down"></i>';} ?> Ship TO</a></th>
			<th><a href=""> Ordered On</a></th>
			<th><a href="">Status</a></th>
			<th><a href="">Total</a></th>
			<th></th>
		</tr>
	</thead>
	
	<tbody>
		<?php
		//$page_links	= $this->pagination->create_links();
		$page_links = "";
		$customers ="";
		$customer = "";
		if($page_links != ''):?>
		<tr><td colspan="5" style="text-align:center"><?php echo $page_links;?></td></tr>
		<?php endif;?>
		<?php echo (count($customers) < 1)?'<tr><td style="text-align:center;" colspan="5">'.lang('no_customers').'</td></tr>':''?>
<?php //foreach ($customers as $customer):?>
		<tr>
			<?php /*<td style="width:16px;"><?php echo  $customer->id; ?></td>*/?>
			<td>12345<?php //echo  $customer->lastname; ?></td>
			<td class="gc_cell_left">qasim <?php //echo  $customer->firstname; ?></td>
			<td>qasim<?php //echo  $customer->email; ?></td>
			<td> 05/14/13 05:49 pm</td>
			<td> <select> <option>option1</option></select></td>
			<td>300Rs</td>
			<td><button onClick="window.location='<?php echo site_url($this->config->item('admin_folder').'/order/view')?>'"> view</button></td>
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
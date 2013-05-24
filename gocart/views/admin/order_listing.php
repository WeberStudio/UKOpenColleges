<?php

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
			

		$return = site_url($admin_folder.'/orders/index/'.$by.'/'.$sort.'/'.$code);
		
		echo '<a href="'.$return.'">'.lang($lang).$icon.'</a>';

}
$sort_by='order_number';
$sort_order='desc';
$code=0; 
$page=0;
$rows=15;
?>

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
			
			 <input type="text" id="start_date" placeholder="Start Date" value="" name="start_date" style=" margin-bottom: 0px;">
			 <input type="text" id="end_date" placeholder="End Date" value="" name="end_date" style=" margin-bottom: 0px;">
			  <a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/tutor/form'); ?>"><i class="gicon-search icon-white"></i><?php echo lang('search')?></a>
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
							
							<?php /*?><th><input type="checkbox" id="gc_check_all" /> <button type="submit" class="btn btn-small btn-danger"><i class="icon-trash"></i></button></th><?php */?>
							<th><?php echo sort_url('order', 'order_number', $sort_by, $sort_order, $code, $this->config->item('admin_folder')); ?></th>
							<th><?php echo sort_url('bill_to', 'bill_lastname', $sort_by, $sort_order, $code, $this->config->item('admin_folder')); ?></th>
							<th><?php echo sort_url('ship_to', 'ship_lastname', $sort_by, $sort_order, $code, $this->config->item('admin_folder')); ?></th>
							<th><?php echo sort_url('ordered_on','ordered_on', $sort_by, $sort_order, $code, $this->config->item('admin_folder')); ?></th>
							<th><?php echo sort_url('status','status', $sort_by, $sort_order, $code, $this->config->item('admin_folder')); ?></th>
							<th><?php echo sort_url('total','total', $sort_by, $sort_order, $code, $this->config->item('admin_folder')); ?></th>
							<th>Delete</th>
							<th>View</th>
						</tr>
					</thead>
					
					<tbody>
					<?php echo (count($orders) < 1)?'<tr><td style="text-align:center;" colspan="8">'.lang('no_orders') .'</td></tr>':''?>
					<?php foreach($orders as $order): ?>
						<tr>
							<?php /*?><td class="to_hide_phone"><input name="order[]" type="checkbox" value="<?php echo $order->id; ?>" class="gc_check"/></td><?php */?>
							<td class="to_hide_phone"><?php echo $order->order_number; ?></td>
							<td class="to_hide_phone" style="white-space:nowrap"><?php echo $order->bill_lastname.', '.$order->bill_firstname; ?></td>
							<td class="to_hide_phone" style="white-space:nowrap"><?php echo $order->ship_lastname.', '.$order->ship_firstname; ?></td>
							<td class="to_hide_phone" style="white-space:nowrap"><?php echo date('m/d/y h:i a', strtotime($order->ordered_on)); ?></td>
							<td style="span2">
							<div class="btn-group inline">
							  <button class="btn btn-warning dropdown-toggle" data-toggle="dropdown">Status <span class="caret"></span></button>
							  <ul class="dropdown-menu" style="text-align:left;">
								<li><a href="<?=base_url().$this->config->item('admin_folder').'/order/order_paid_status/pending/'?>">Pending</a></li>
								<li><a href="<?=base_url().$this->config->item('admin_folder').'/order/order_paid_status/processing/'?>">Processing</a></li>
								<li><a href="<?=base_url().$this->config->item('admin_folder').'/order/order_paid_status/cencelled/'?>">Cancelled</a></li> 
								<li><a href="<?=base_url().$this->config->item('admin_folder').'/order/order_paid_status/delivered/'?>">Delivered</a></li>                       
							  </ul>
							</div>				   
							</td>
							<td><?php echo format_currency($order->total); ?></td>
							<td><a class="btn btn-small"  rel="tooltip" data-placement="left" data-original-title="<?php echo lang('delete');?>" href="<?=base_url().'admin/order/delete/'.$order->id?>" onclick="return confirm('If you delete this order you will not be able to recover it later. Are you sure you want to permanently delete this order?');"><i class="gicon-remove-circle"></i> Delete </a></td>
							<td><a  class="btn btn-small"  rel="tooltip" data-placement="left" data-original-title="View Order Details" href="<?=base_url().'admin/order/view/'.$order->id?>"><i class="gicon-eye-open"></i>View</td>							
						</tr>
					<?php endforeach; ?>
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
<script type="text/javascript">
function areyousure()
{
	return confirm('<?php echo lang('confirm_delete_order');?>');
}
$(document).ready(function(){

	

	$('#start_date').datepicker({
	  format: 'mm-dd-yyyy'
	});
	$('#end_date').datepicker({
	  format: 'mm-dd-yyyy'
	});
});
</script>

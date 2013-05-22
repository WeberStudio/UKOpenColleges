
<div id="main" style="min-height:1000px">
<div class="container">
  <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
  <div id="main_container">
    <div class="row-fluid ">
      <div class="span12">
        <div class="box paint color_6">
          <div class="title">
            <h4> <i class=" icon-bar-chart"></i><span>Order View </span></h4>
            <div class="content top">
              <div class="row-fluid">
                <div class="span6">
                  <div class="box paint_hover color_12">
                    <div class="title">
                      <h3> <i class="icon-sitemap"></i> <span><?php echo lang('account_info');?></span> </h3>
                    </div>
                      <div class="content"> <?php echo (!empty($order->company))?$order->company.'<br>':'';?> <?php echo $order->firstname;?> <?php echo $order->lastname;?> <br/>
                      <?php echo $order->email;?> <br/>
                      <?php echo $order->phone;?> 
					 </div>
                  </div>
                  <!-- End .box -->
                </div>
                <div class="span6">
                  <div class="box paint_hover color_15">
                    <div class="title">
                      <h3> <i class="icon-sitemap"></i> <span><?php echo lang('billing_address');?></span> </h3>
                    </div>
                    <div class="content"> <?php echo (!empty($order->bill_company))?$order->bill_company.'<br/>':'';?> <?php echo $order->bill_firstname.' '.$order->bill_lastname;?> <br/>
                      <?php echo $order->bill_address1;?><br>
                      <?php echo (!empty($order->bill_address2))?$order->bill_address2.'<br/>':'';?> <?php echo $order->bill_city.', '.$order->bill_zone.' '.$order->bill_zip;?><br/>
                      <?php echo $order->bill_country;?><br/>
                      <?php echo $order->bill_email;?><br/>
                      <?php echo $order->bill_phone;?> </div>
                  </div>
                  <!-- End .box -->
                </div>
              </div>
              <div class="row-fluid">
                <label class="control-label span1" for="text" style="width: 328px;">
                <h3>Admin Notes</h3>
                <span class="help-block"></span>
                </label>
                <label class="control-label span1" for="hint-field" style="width: 328px;">
                <h5>Status</h5>
                <span class="help-block"></span>
                </label>
              </div>
              <div class="row-fluid">
                <div class="controls span4">
                  <textarea id="text" rows="3" class="row-fluid"></textarea>
                </div>
                <div class="controls span4">
                   <select data-placeholder="Select order status" class="chzn-select" name="status"  tabindex="5">
                  	<option value="">Select order status</option>				 
					<option  value="pending">Pending</option>
					<option  value="processing">Processing</option>
					<option  value="cencelled">Cancelled</option>
					<option  value="delivered">Delivered</option>                
				   </select>
                </div>
              </div>
              <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
                <thead>
                  <tr>
                    <th>Product Name</th>
                    <th>Description</th>
                    <th> Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Proudct Admin Id SKU: 0</td>
                    <td class="gc_cell_left">display when requirded </td>
                    <td>$10.00</td>
                    <td> 4</td>
                    <td>$30.00 </td>
                  </tr>
                </tbody>
              </table>
              <table style="width:100%;margin-bottom:0; ">
                <tbody>
                  <tr>
                    <td><b>Subtotal</b></td>
                    <td style="width:114px;"><b>$2000</b></td>
                  </tr>
                  <tr>
                    <td><b>Tax</b></td>
                    <td style="width:114px;"><b>5%</b></td>
                  </tr>
                  <tr>
                    <td><h3> Grand Total</h3></td>
                    <td style="width:114px;"><b>$1550</b></td>
                  </tr>
                </tbody>
              </table>
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

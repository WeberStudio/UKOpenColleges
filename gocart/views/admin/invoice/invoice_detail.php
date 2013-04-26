<script type="text/javascript">

	$(function()
	{
		$('#btn_add_item').click(function() {
			$('#new_item').clone().appendTo('#item_table').removeAttr('id').addClass('item').show();
		});
		
		//$('#new_item').clone().appendTo('#item_table').removeAttr('id').addClass('item').show();			
		

	});
	
</script>

<div id="main" style="min-height:1000px">
<div class="container">
  <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
  <!-- End top-right -->
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
	
	?>
  <div id="js_error_container" class="alert alert-error" style="display:none;">
    <p id="js_error"></p>
  </div>
  <div id="js_note_container" class="alert alert-note" style="display:none;"> </div>
  <?php if (!empty($message)): ?>
  <div class="alert alert-success"> <a class="close" data-dismiss="alert">*</a> <?php echo $message; ?> </div>
  <?php endif; ?>
  <?php if (!empty($error)): ?>
  <div class="alert alert-error"> <a class="close" data-dismiss="alert">*</a> <?php echo $error; ?> </div>
  <?php endif; ?>
  <div class="row-fluid">
    <div class="span6">
      <div class="box paint color_24">
        <div class="title">
          <div class="row-fluid">
            <h4> <i class=" icon-bar-chart"></i> Client Info </h4>
          </div>
        </div>
        <!-- End .title -->
        <div class="accordion" id="accordion4">
          <div class="accordion-group">
            <div class="accordion-heading"> <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion4" href="#collapseOne2"> Recipient Details </a> </div>
            <div id="collapseOne2" class="accordion-body collapse in" >
              <div class="accordion-inner">
                <div class="pull-left">
                  <h2><a href="<?php echo site_url('clients/view/' . $user_info[0]['id']); ?>"></a></h2>
                  <span> <?php echo ($user_info[0]['firstname']) ? '<strong>'.lang('user_name').'</strong>: '.$user_info[0]['lastname'] . '<br/>' : ''; ?> </span> <span> <?php echo ($user_info[0]['company']) ? '<strong>'.lang('admin_name').'</strong>: '.$user_info[0]['company'] : '<br/>'; ?> </span> <br />
                  <?php if ($user_info[0]['phone']) { ?>
                  <span><strong><?php echo lang('invoice_phone'); ?>:</strong> <?php echo $user_info[0]['phone']; ?></span><br>
                  <?php } ?>
                  <?php if ($user_info[0]['email']) { ?>
                  <span><strong><?php echo lang('invoice_email'); ?>:</strong> <?php echo $user_info[0]['email']; ?></span>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End .content -->
      </div>
      <!-- End .box -->
    </div>
    <!-- End .span6 -->
    <div class="span6">
      <div class="box paint color_10">
        <div class="title">
          <div class="row-fluid">
            <h4> <i class=" icon-bar-chart"></i> Invoice Dates </h4>
          </div>
        </div>
        <!-- End .title -->
        <div class="accordion" id="accordion5">
          <div class="accordion-group">
            <div class="accordion-heading"> <a class="accordion-toggle collapsed" data-toggle="collapse"  href="#collapseOne5"> Invoice Date Info </a> </div>
            <div id="collapseOne5" class="accordion-body collapse in">
              <div class="accordion-inner">
                <label class="control-label"><?php echo lang('invoice_id'); ?> #</label>
                <input type="text" id="invoice_number" class="span10" value="<?php echo $invoice_data->invoice_id; ?>" />
                <label class="control-label"><?php echo lang('creation_date'); ?></label>
                <input type="text" id="invoice_date_created" class="span10" value="<?php echo date("d-m-Y", strtotime($invoice_data->invoice_date_created)); ?>" />
                <label class="control-label"><?php echo lang('due_date'); ?></label>
                <input type="text" id="invoice_date_due" class="span10" value="<?php echo date("d-m-Y", strtotime($invoice_data->invoice_date_due));  ?>"/>
              </div>
            </div>
          </div>
        </div>
        <!-- End .content -->
      </div>
      <!-- End .box -->
    </div>
    <!-- End .span6 -->
  </div>
  <div id="main_container">
    <div class="row-fluid">
      <div class="span12">
        <div class="box paint color_8">
          <div class="title">
            <div class="row-fluid">
              <h4>Invoice Details</h4>
            </div>
            <div class="row-fluid" style="padding-left:15px;"> <a href="javascript:void(0)" class="btn" id="btn_add_item" style="margin-right: 5px;"><i class="icon-plus-sign"></i> Add Item</a> </div>
            <div class="content">
              <form id="invoice_form" class="form-horizontal" action="<?=base_url().$this->config->item('admin_folder').'/invoices/save_invoice_details/'.$invoice_data->invoice_id?>" method="post">
                <div class="invoice">
                  <table id="item_table" class="items table table-striped table-bordered">
                    <thead>
                      <tr>
                        <th><?php echo lang('item'); ?></th>
                        <th style="min-width: 300px;"><?php echo lang('description'); ?></th>
                        <th style="width: 100px;"><?php echo lang('quantity'); ?></th>
                        <th style="width: 100px;"><?php echo lang('price'); ?></th>
                        <th><?php echo lang('tax_rate'); ?></th>
                        <th><?php echo lang('subtotal'); ?></th>
                        <th><?php echo lang('tax'); ?></th>
                        <th><?php echo lang('total'); ?></th>
                        <th></th>
                        <input type="hidden" id="invoice_id" value="<?php echo $invoice_data->invoice_id; ?>">
                      </tr>
                    </thead>
                    <tbody>
                      <? if(!empty($invoice_items)){
							foreach ($invoice_items as $invoice_item){ 
						?>
                      <tr id="new_item" >
                        <td style="vertical-align: top;"><input type="text" id="item_name" name="item_name[]" style="width: 90%;" value="<?=$invoice_item['item_name']?>">
                          <input type="hidden" id="item_id" value="<?=$invoice_item['item_id']?>">
                        </td>
                        <td><textarea id="item_description" name="item_description[]" rows="1"  cols="5"><?=$invoice_item['item_description']?>
</textarea></td>
                        <td style="vertical-align: top;"><input type="text" class="input-mini" id="item_quantity" name="item_quantity[]" style="width: 90%;" value="<?=$invoice_item['item_quantity']?>"></td>
                        <td style="vertical-align: top;"><input type="text" class="input-mini" id="item_price" name="item_price[]" style="width: 90%;" value="<?=$invoice_item['item_price']?>"></td>
                        <td style="vertical-align: top;"><select name="item_tax_rate_id[]" id="item_tax_rate_id" class="input-small">
                            <option value="0">
                            <?php  echo lang('none'); ?>
                            </option>
                            <?php foreach ($tax_rates as $tax_rate) { ?>
                            <option <?php if ($tax_rate->tax_rate_id == $invoice_item['item_tax_rate_id']) { ?>selected="selected"<?php } ?>  value="<?php echo $tax_rate->tax_rate_id; ?>"><?php echo $tax_rate->tax_rate_percent . '% - ' . $tax_rate->tax_rate_name; ?></option>
                            <?php } ?>
                          </select>
                        </td>
                        <td style="vertical-align: top;"><?php echo $invoice_item['item_subtotal']; ?></td>
                        <td style="vertical-align: top;"><?php echo $invoice_item['item_tax_total']; ?></td>
                        <td style="vertical-align: top;"><?php echo $invoice_item['item_total']; ?></td>
                        <td></td>
                      </tr>
                      <? } 
						}
						else
						{
						?>
						  <tr id="new_item">
							 <td style="vertical-align: top;"><input type="text" id="item_name" name="item_name[]" style="width: 90%;" value="">
                          <input type="hidden" id="item_id" value="">
                        </td>
                        <td><textarea id="item_description" name="item_description[]" rows="1"  cols="5"></textarea></td>
                        <td style="vertical-align: top;"><input type="text" class="input-mini" id="item_quantity" name="item_quantity[]" style="width: 90%;" value=""></td>
                        <td style="vertical-align: top;"><input type="text" class="input-mini" id="item_price" name="item_price[]" style="width: 90%;" value=""></td>
						<td style="vertical-align: top;">
						<select name="item_tax_rate_id[]" id="item_tax_rate_id" class="input-small">
                         	<option value="0">
                            <?php  echo lang('none'); ?>
                            </option>
                            <?php foreach ($tax_rates as $tax_rate) { ?>
                            <option  value="<?php echo $tax_rate->tax_rate_id; ?>"><?php echo $tax_rate->tax_rate_percent . '% - ' . $tax_rate->tax_rate_name; ?></option>
                            <?php } ?>
                          </select>
                        </td>                       
                        <td colspan="4"></td>
						  </tr>
                      <?php
						}						
						?>
                    </tbody>
                  </table>
                  <?php /*?><table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th><?php echo lang('subtotal'); ?></th>
							<th><?php echo lang('item_tax'); ?></th>
							<th><?php echo lang('invoice_tax'); ?></th>
							<th><?php echo lang('total'); ?></th>
							<th><?php echo lang('paid'); ?></th>
							<th><?php echo lang('balance'); ?></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><?php echo format_currency($invoice->invoice_item_subtotal); ?></td>
							<td><?php echo format_currency($invoice->invoice_item_tax_total); ?></td>
							<td>
								<?php if ($invoice_tax_rates) { foreach ($invoice_tax_rates as $invoice_tax_rate) { ?>
									<strong><?php echo anchor('invoices/delete_invoice_tax/' . $invoice->invoice_id . '/' . $invoice_tax_rate->invoice_tax_rate_id, lang('remove')) . ' ' . $invoice_tax_rate->invoice_tax_rate_name . ' ' . $invoice_tax_rate->invoice_tax_rate_percent; ?>%:</strong>				
									<?php echo format_currency($invoice_tax_rate->invoice_tax_rate_amount); ?><br>
								<?php } } else { echo format_currency('0'); }?>
							</td>
							<td><?php echo format_currency($invoice->invoice_total); ?></td>
							<td><?php echo format_currency($invoice->invoice_paid); ?></td>
							<td><?php echo format_currency($invoice->invoice_balance); ?></td>
						</tr>
					</tbody>
				</table><?php */?>
                  <br />
                  <br />
                  <p><strong><?php echo lang('invoice_terms'); ?></strong></p>
                  <textarea id="invoice_terms" name="invoice_terms" class="redactor" style="width: 100%;"><?php echo $invoice_data->invoice_terms; ?></textarea>
                </div>
                <br />
                <button type="submit" value="conform" name="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<tr id="new_item" style="display: none;">
  <td><input type="hidden" id="quote_id" value="">
    <input type="hidden" id="item_id" value="">
    <input type="text" id="item_name" class="input-small" value="">
  </td>
  <td><input type="text" class="input-small" id="item_description" value=""></td>
  <td><input type="text" class="input-mini" id="item_quantity" value=""></td>
  <td><input type="text" class="input-mini" id="item_price" value=""></td>
  <td colspan="2"></td>
</tr>
<tr class="item">
  <td><input type="hidden" id="quote_id" value="">
    <input type="hidden" id="item_id" value=">">
    <input type="text" id="item_name" style="width: 90%;" value="">
  </td>
  <td><input type="text" id="item_description" style="width: 90%;" value=""></td>
  <td><input type="text" id="item_quantity" style="width: 90%;" value=""></td>
  <td><input type="text" id="item_price" style="width: 90%;" value=""></td>
  <td></td>
  <td><a class="" href=""> <i class="icon-remove"></i> </a> </td>
</tr>

<script type="text/javascript">
function areyousure()
{
    return confirm('<?php echo lang('confirm_delete_category');?>');
}
</script>
<?php 
define('ADMIN_FOLDER', $this->config->item('admin_folder'));
        function list_categories($cats, $sub='') {
            
            foreach ($cats as $cat):?>
            <tr>
                <td><?php echo  $cat['category']->id; ?></td>
                <td><?php echo  $sub.$cat['category']->name; ?></td>
                <td>10</td>
                <td>Published</td>
                <td></td>
                <td>03-23-2013</td>                
                <td></td>  
                <td>
            <div class="options btn-group" align="right">
                    <a class="btn btn-small dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-cog"></i> Options</a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="">
                                <i class="icon-pencil"></i> Edit                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="icon-print"></i> Open PDF                            </a>
                        </li>
                        <li>
                            <a href="">
                                <i class="icon-envelope"></i> Send Email                            </a>
                        </li>
                        <li>
                            <a href="" onclick="return confirm('If you delete this invoice you will not be able to recover it later. Are you sure you want to permanently delete this invoice?');">
                                <i class="icon-trash"></i> Delete                            </a>
                        </li>
                    </ul>
                </div>
                </td>
                <td width="60"></td>

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
      <!-- End top-right -->
    </div>
    <div id="main_container">
      <div class="row-fluid ">
        <div class="span12">
          <div class="box paint color_18">
            <div class="title">
              <h4> <i class=" icon-bar-chart"></i><span>Invoices
                <a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/invoices/form'); ?>"><i class="icon-plus-sign"></i> <?php echo lang('add_new_category');?></a>
                 <a class="btn" href="<?php ?>">Open</a>
                 <a class="btn" href="#">Closed</a>  
                 <a class="btn" href="#" >Overdue</a>
                </span> </h4>
            </div>
            <!-- End .title -->
            <div class="content top">
              <table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
                <thead>
                  <tr>
                    <th class="no_sort">Status</th>
                    <th class="no_sort to_hide_phone">Invoice </th>
                    <th class="ue no_sort">Created</th>
                    <th>Due Date</th>
                    <th>Client Name</th>
                    <th class="ue no_sort">Amount</th>
                    <th class="ue no_sort ">Balance</th>
                    <th class="ue no_sort">Options</th> 
                    <th></th>
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

<div id="main" style="min-height:1000px">
  <div class="container">
    <? include_once(realpath('.').'/gocart/views/admin/includes/admin_profile.php');?>
     <div id="main_container">
      <div class="row-fluid ">
        <div class="span12">
          <div class="box paint color_1">
            <div class="title">
             <h4> <i class=" icon-bar-chart"></i>
			 <span>Forums Listing
			<a class="btn" href="<?php echo site_url($this->config->item('admin_folder').'/forums/form'); ?>"><i class="icon-plus-sign"></i>Add New Tutor </a>
			 </span></h4>
               

<table id="datatable_example" class="responsive table table-striped table-bordered" style="width:100%;margin-bottom:0; ">
	<thead>
		<tr>
			<th>Title</th>
			<th>Activity</th>
			<th>course</th>
			<th>user</th>
			<th>tuter</th>
			<th>status</th>
			<th>oprations</th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			
			<td>first title</td>
			<td >activities</td>
			<td>first course</td>
			<td> first user</td>
			<td>first tutor</td>
			<td>active</td>
			<td><div class="btn-group">
					<a class="btn" href=""><i class="icon-pencil"></i> Edit </a>
					<a class="btn btn-danger" href=""><i class="icon-trash icon-white"></i> Remove </a>
				</div></td>
		</tr>

		
		
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

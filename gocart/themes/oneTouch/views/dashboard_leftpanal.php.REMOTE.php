<div class="span3">
          <div class="title">
            <div class="row-fluid legend">
              <h1><?php echo  $customer_details['firstname']." ". $customer_details['lastname']?> </h1>
            </div>
          </div>
          <!-- End .title -->
          <div class="content">
            <div class="row-fluid well well-small"> <img class="row-fluid" src="<?php echo theme_img('sample_avatar_big');?>"> </div>
            <ul class="nav1 nav-tabs dark nav-stacked">
			<li><a href="<?= base_url();?>secure/"><i class="gicon-user"></i>Dashboard</a></li>
              <li><a href="<?= base_url();?>secure/my_account"><i class="gicon-user"></i>Profile</a></li>
              <li><a href="<?= base_url();?>dashboard/course"><i class="gicon-wrench"></i>My Course</a></li>
              <li><a href="<?= base_url();?>dashboard/fourm"><i class="gicon-globe"></i>Fourms</a></li>
              <li><a href="<?= base_url();?>dashboard/file_manager"><i class="gicon-envelope"></i>File Manasger</a></li>
              <li><a href="<?= base_url();?>secure/logout"><i class="gicon-lock"></i>Log Out</a></li>
            </ul>
          </div>
          <!-- End .content --> 
        </div>
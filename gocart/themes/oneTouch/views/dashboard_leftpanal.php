<div class="span3">
          <div class="title">
            <div class="row-fluid legend">
              <h1>
			  <?php
			  if($this->Tutor_model->is_logged_in(false, false)){
			   $tutor_details = $this->go_cart->customer();
			  	$get_address = $this->Tutor_model->get_address();
			   echo  $tutor_details['firstname']." ". $tutor_details['lastname'];
			  }
			  if($this->Customer_model->is_logged_in(false, false))
			  {
				  $customer_details = $this->go_cart->customer();
				  $get_address_cus = $this->Customer_model->get_address_pro();
				  echo  $customer_details['firstname']." ". $customer_details['lastname'];
			  }
			   ?>
                </h1>
            </div>
          </div>
          <!-- End .title -->
          <div class="content">
            <div class="row-fluid well well-small"> <img class="row-fluid" src="<?php 
			if(!empty($get_address)){ echo base_url().'uploads/images/full/'.$get_address[0]->avatar;}
			if(!empty($get_address_cus)){ echo base_url().'uploads/images/full/'.$get_address_cus[0]->image;}
			?>"> </div>
            <ul class="nav1 nav-tabs dark nav-stacked">
            <?php if($this->Tutor_model->is_logged_in(false, false)):?>
			<li><a href="<?= base_url();?>dashboard/"><i class="gicon-user"></i>Dashboard</a></li>
              <li><a href="<?= base_url();?>dashboard/my_profile"><i class="gicon-user"></i>Profile</a></li>
              <li><a href="<?= base_url();?>dashboard/course"><i class="gicon-wrench"></i>My Course</a></li>
              <li><a href="<?= base_url();?>dashboard/fourm"><i class="gicon-globe"></i>Fourms</a></li>
              <li><a href="<?= base_url();?>dashboard/file_manager"><i class="gicon-envelope"></i>File Manasger</a></li>
              <li><a href="<?= base_url();?>tutor_login/logout"><i class="gicon-lock"></i>Log Out</a></li>
              <?php else:?>
             
              <li><a href="<?= base_url();?>dashboard/"><i class="gicon-user"></i>Dashboard</a></li>
              <li><a href="<?= base_url();?>secure/my_account"><i class="gicon-user"></i>Profile</a></li>
              <li><a href="<?= base_url();?>dashboard/course"><i class="gicon-wrench"></i>My Course</a></li>
              <li><a href="<?= base_url();?>dashboard/fourm"><i class="gicon-globe"></i>Fourms</a></li>
              <li><a href="<?= base_url();?>dashboard/file_manager"><i class="gicon-envelope"></i>File Manasger</a></li>
               <li><a href="<?= base_url();?>secure/logout"><i class="gicon-lock"></i>Log Out</a></li>
              <?php endif;?>
            </ul>
          </div>
          <!-- End .content --> 
        </div>
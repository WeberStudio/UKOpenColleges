<body class="home page page-template page-template-page-no_top-php theme-onetouch wpb-js-composer js-comp-ver-3.4.12 vc_responsive">
<?php //include('leftPanel.php'); ?>
<a href="#"><img id="nominee" src="<?=theme_img("custom-slider-img/cssreel_nomineetag_yellow.png")?>" alt="" /></a>
<div id="body-wrapper" >
<div id="body-wrapper-padding">
<!--[if lt IE 7]>
<div class="alert">Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different
browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to
experience this site.
</div><![endif]-->
<section id="header" class="row" role="banner">
<div class="four columns logo">
    <a  href="<?=base_url()?>cart/">
        <img src="<?php echo theme_img("custom-slider-img/logouk.png")?>" alt="OneTouch"></a>
</div>
<? $categories = $this->dropdown_menu->get_all_categories(); ?>
<nav class="eleven columns" id="topmenu">
<?php if($this->Customer_model->is_logged_in(false, false)):?>
<div class="clear"> </div>
<div align="right" style="font-size:16px; color:#57BAE8;"> <?php $customer_details = $this->go_cart->customer();
     echo "Wellcome ". $customer_details['firstname'];?></div>
<?php else: ?>
	<div class="clear"> </div>
      <?php endif; ?>
    <div id="eyebrow">
     <div class="clear"> </div>
    </div>
    <div class="clear"></div>	
    <ul id="menu-primary-navigation" class="tiled-menu">
        <li class="menu-portfolio">
            <span class="menu-item-wrap">
                <a  href="<?=base_url()?>cart/allcourses/" style='background-color:#cecece; background-size:cover; background-image:none;' >
                    <span class="link-text">All Courses</span><span class="arrow">&nbsp;</span>                      
                    <span class='tile-icon' style='background-image:url(<?php echo theme_img("icons/text_w@2x.png");?>)'></span>
                </a>
				
			</span> 	
				<?php /*?><ul class="nav main-links" >
  				<li class="with-sub-menu" id="subject_menu"> <a href="#"> subject</a>
				<div class="sub mega" style="display: block; opacity: 1;" id="subjectMenuTab">
				  <div class="mm-menu">
					<div class="mm-head">					 
					  <div class="mm-index">
						<ul class="ltrs">
						  <li><a class="subjHome" onclick="toggleSubjectLetter(this.innerHTML);return false;">home</a></li>
						  <li><a href="#" onclick="toggleSubjectLetter(this.innerHTML);return false;">#</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">A</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">B</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">C</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">D</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">E</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">F</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">G</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">H</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">I</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">K</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">L</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">M</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">N</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">O</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">P</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">R</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">S</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">T</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">U</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">V</a></li>
						  <li><a href="" onclick="toggleSubjectLetter(this.innerHTML);return false;">W</a></li>
						</ul>
					  </div>
					  <div class="clear">&nbsp;</div>
					</div>
					<div class="mm-data cols_2" id="subjectMenuItems">
					  <ul class="sub-menu with-counts lhome">
						<li><a href="/3D-Animation-training-tutorials/1-0.html">3D + Animation<span> (162)</span></a></li>
						<li><a href="/Audio-training-tutorials/20-0.html">Audio<span> (79)</span></a></li>
						<li><a href="/Business-training-tutorials/29-0.html">Business<span> (359)</span></a></li>
						<li><a href="/Design-training-tutorials/40-0.html">Design<span> (273)</span></a></li>
						<li><a href="/Developer-training-tutorials/50-0.html">Developer<span> (218)</span></a></li>
					  </ul>
					  <ul class="sub-menu with-counts lhome">
						<li><a href="/Documentaries-training-tutorials/1459-0.html">Documentaries<span> (45)</span></a></li>
						<li><a href="/Photography-training-tutorials/70-0.html">Photography<span> (235)</span></a></li>
						<li><a href="/Video-training-tutorials/78-0.html">Video<span> (254)</span></a></li>
						<li><a href="/Web-training-tutorials/88-0.html">Web<span> (412)</span></a></li>
					  </ul>
					  <ul class="sub-menu with-counts l_">
						<li><a href="/3D-Animation-training-tutorials/1-0.html">3D + Animation<span> (162)</span></a></li>
					  </ul>
					  <?php					  
					   foreach($categories as $key => $cat_info)
					   {
					   		if(count($cat_info)>0)
							{
								
					  
					  ?>					  
							  <ul class="sub-menu with-counts l<?=$key?>">
							  <? foreach($cat_info as $cat)
					   			{ ?>							  
									<li><a href="<?=base_url().$cat['slug']?>"><?=$cat['name']?><span> (2)</span></a></li>									
								<? } ?>
							  </ul>
					 	<? } 
						}
						?>
					  <br class="clear" />
					</div>
				  </div>
    			</div>
		</li>
		</ul><?php */?>
			<ul class="ltrs">
			  
			  <li><a href="#" onClick="#">View all - by location - by author - by subject</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">A</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">B</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">C</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">D</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">E</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">F</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">G</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">H</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">I</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">K</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">L</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">M</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">N</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">O</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">P</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">R</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">S</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">T</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">U</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">V</a></li>
			  <li><a href="" onClick="toggleSubjectLetter(this.innerHTML);return false;">W</a></li>			  
			  <li>
			  	<div class="mm-data" id="subjectMenuItems">
				  <ul class="sub-menu with-counts lhome" style="margin:0px !important; padding:10px 0 5px 10px !important; width:100%; ">
					<?
					foreach($categories as $key => $cat_info)
					   {
							if(count($cat_info)>0)
							{
								foreach($cat_info as $cat)
								{ ?>							  
									<li><a href="<?=base_url().$cat['slug']?>"><?=$cat['name']?><span> (<?=$cat['count']?>)</span></a></li>									
								<? } 
							} 
						}							
					?>
				  </ul>
			  	<?php					  
			   foreach($categories as $key => $cat_info)
			   {
					if(count($cat_info)>0)
					{
						
			  
			  ?>					  
					  <ul class="sub-menu with-counts l<?=$key?>"  style="margin:0px !important; padding:10px 0 5px 10px !important; width:100%; ">
					  <? foreach($cat_info as $cat)
						{ ?>							  
							<li><a href="<?=base_url().$cat['slug']?>"><?=$cat['name']?><span> (<?=$cat['count']?>)</span></a></li>									
						<? } ?>
					  </ul>
				<? } 
				}
				?>			
			  </div>
			  </li>
			  
			  
			</ul>
			 		
	 		
        </li>             
        <li class="menu-blog">
			<span class="menu-item-wrap">
				<a  href="#" <a  href="#" style='background-color:#cecece; background-size:cover; background-image:none;' >
					<span class="link-text">How it Work</span>
                    <span class="arrow">&nbsp;</span><span class='tile-icon' style='background-image:url(<?php echo theme_img("icons/!.png");?>);'></span></a></span>           
        </li>
        <li class="menu-shop"><span class="menu-item-wrap">
                <a  href="#" <a  href="#" style='background-color:#cecece; background-size:cover; background-image:none;' >
                    <span class="link-text">FAQs</span><span class='tile-icon' style='background-image:url(<?php echo theme_img("icons/people_w@2x.png");?>);'></span>
                </a>
            </span>
        </li>
        <li class="menu-shortcodes">
            <span class="menu-item-wrap">
                <a  href="#" style='background-color:#cecece; background-size:cover; background-image:none;'>
                    <span class="link-text">Qualification</span><span class='tile-icon' style='background-image:url(<?php echo theme_img("icons/pencil_w@2x.png");?>)'></span>
                </a>
            </span>
        </li>
        <li class="menu-features">
            <span class="menu-item-wrap">
                 <a  href="#" style='background-color:#cecece; background-size:cover; background-image:none;'>
                    <span class="link-text">Tutors</span>
                    <span class='tile-icon' style='background-image:url(<?php echo theme_img("icons/category_w@2x.png");?>);'></span>
                </a>
            </span>
			
        </li>
        <li class="menu-contacts">
            <span class="menu-item-wrap">
                <a  href="#" style='background-color:#cecece; background-size:cover; background-image:none;'>
                   <?php /*?> <img src='<?php echo theme_img("uploads/409277-92x92.jpg");?>' class='contact-menu-icons contact-icon-1' alt='' />
                    <img src='<?php echo theme_img("uploads/378743-92x46.jpg");?>' class='contact-menu-icons contact-icon-2' alt='' />
                    <img src='<?php echo theme_img("uploads/397209-46x46.jpg");?>' class='contact-menu-icons contact-icon-3' alt='' /><?php */?>
                    <span class="link-text">Contact Us</span><span class='tile-icon' style='background-image:url(<?php echo theme_img("icons/tags_w@2x.png");?>);'></span>
                </a>
            </span>
        </li>

    </ul> 
</nav>
  <script type="text/javascript">
	jQuery(document).ready(function () {
		toggleSubjectLetter('home');
	});
	function toggleSubjectLetter(letter) {
		jQuery('div#subjectMenuItems')
		.children('ul').hide()
		.parent().children('ul.l' + (letter == '#' ? '_' : letter))
		.show();
		jQuery('div#subjectMenuTab ul.ltrs > li > a').each(function () {
			var e = jQuery(this);
			if (e.html() === letter)
				e.parent().addClass('cur').siblings('li.cur').removeClass('cur');
		});
	}
</script>
<style>
#sub-menu with-counts {
	width: 100%;
	float: left;
	margin: 0 0 3em 0;
	padding: 0;
	list-style: none; }
#sub-menu with-counts li {
	float: left; }
</style>
<div class="row">
    <div class="fifteen columns" id="top-social">

        <a class="open-soc" id="show-social" href="#">
            <div class="twit-open"></div>
            <span>expand panel</span>
            Social icons
        </a>

        <div class="soc-wrap">

            <div class="soc-icons">


                <a class="rss" href="#" data-original-title="RSS feed">RSS</a>

                <a href="http://twitter.com" class="tw" data-original-title="Twitter">Twitter</a>
                <a href="http://facebook.com" class="fb" data-original-title="Facebook">Facebook</a>
                <a href="http://flickr.com" class="fl" data-original-title="Flickr">Flickr</a>
                <a href="http://vimeo.com" class="vi" data-original-title="Vimeo">Vimeo</a>
                <a href="http://dribble.com" class="dr" data-original-title="Dribble">Dribble</a>
                <a href="http://lastfm.com" class="lf" data-original-title="Last FM">Last FM</a>
                <a href="http://youtube.com" class="yt" data-original-title="YouTube">YouTube</a>
                <a href="https://accountservices.passport.net/" class="ms" data-original-title="Microsoft ID">Microsoft ID</a>
                <a href="http://linkedin.com" class="li" data-original-title="LinkedIN">LinkedIN</a>
                <a href="https://accounts.google.com/" class="gp" data-original-title="Google +">Google +</a>
                <a href="http://picasa.com" class="pi" data-original-title="Picasa">Picasa</a>
                <a href="http://pinterest.com" class="pt" data-original-title="Pinterest">Pinterest</a>
                <a href="http://wordpress.com" class="wp" data-original-title="Wordpress">Wordpress</a>
                <a href="http://dropbox.com" class="db" data-original-title="Dropbox">Dropbox</a>

            </div>

        </div>
    </div>

</div> 
<div><span style="padding 15 15 15 15; float : right; margin-right:15px; "  ><a href="<?= base_url();?>secure/logout" rel="nofollow" data-product_id="868" class="add_to_cart_button button product_type_simple">Checkout</a></span></div>

<div class="promo"><span class="icon info"></span>
    <h1 class="page-title">Call us on 1221 288 0181 now to talk to course advisor - 
        <a href="http://localhost/OneTouch-sep/content.php" style="color:red;">Contact Us</a>
        <span style="padding: 0 85px;"  >
        
        <?php if($this->Customer_model->is_logged_in(false, false)):?>
        <a href="<?php echo  site_url('secure/my_account');?>" style="color:red;"><?php echo lang('my_account')?></a> <span style="color:red;">/</span>  <a href="<?php echo site_url('secure/logout');?>" style="color:red;"><?php echo lang('logout');?></a></span></h1>
        
        <?php else: ?>
        <a href="<?php echo site_url('secure/register'); ?>" style="color:red;"><?php echo lang('register');?></a>
        <span style="color:red;">/</span>
        <a href="<?php echo site_url('secure/login');?>" style="color:red;"><?php echo lang('login');?></a>
        </span></h1>
        <?php endif; ?>
          
</div> 
<!---------php validation----->
<?php if ($this->session->flashdata('message')):?>
			<div class="alert alert-info">
				<a class="close" data-dismiss="alert">×</a>
				<?php echo $this->session->flashdata('message');?>
			</div>
		<?php endif;?>
		
		<?php if ($this->session->flashdata('error')):?>
			<div class="alert alert-error">
				<a class="close" data-dismiss="alert">×</a>
				<?php echo $this->session->flashdata('error');?>
			</div>
		<?php endif;?>
		
		<?php if (!empty($error)):?>
			<div class="alert alert-error">
				<a class="close" data-dismiss="alert">×</a>
				<?php echo $error;?>
			</div>
		<?php endif;?>

     
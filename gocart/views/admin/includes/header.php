<!DOCTYPE html>
<html class="sidebar_hover  no-js" lang="en">
<head>
<meta charset="utf-8">
<title>Admin Open College</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<?php
	/*include('libraries/load_assets.php');
	$load_js_css = new Load_Assets();
	$load_js_css->get_assets();	*/
?>
<link rel="shortcut icon" href="<?=base_url().ASSETS_PATH?>css/images/favicon.png">


<link href="<?=base_url()?>assets/opencollege/admin/js/plugins/chosen/chosen/chosen.css" rel="stylesheet">
<link href="<?=base_url()?>assets/opencollege/admin/css/twitter/bootstrap.css" rel="stylesheet">
<link href="<?=base_url()?>assets/opencollege/admin/css/base.css" rel="stylesheet">
<link href="<?=base_url()?>assets/opencollege/admin/css/twitter/responsive.css" rel="stylesheet">
<link href="<?=base_url()?>assets/opencollege/admin/css/jquery-ui-1.8.23.custom.css" rel="stylesheet">
<link type="text/css" href="<?php echo base_url('assets/css/redactor.css');?>" rel="stylesheet" />
<link type="text/css" href="<?php echo base_url('assets/css/file-browser.css');?>" rel="stylesheet" />
<script src="<?=base_url().ASSETS_PATH?>js/jquery.js" type="text/javascript"> </script> 
<script src="<?=base_url()?>assets/opencollege/admin/js/plugins/modernizr.custom.32549.js"></script>   
<script type="text/javascript" src="<?php echo base_url('assets/js/redactor.min.js');?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/file-browser.js');?>"></script>
<?php if($this->auth->is_logged_in(false, false)):?>

<script type="text/javascript">
$(document).ready(function(){
	
	
	/*$('.redactor').redactor({
		focus: true,
		plugins: ['fileBrowser']
	});    */
});
</script>
<?php endif;?>
</head>
<body>
    <div id="loading">
    	<img src="<?=base_url().ASSETS_PATH?>img/ajax-loader.gif">
    </div>
    <div id="responsive_part">
      <div class="logo"> <a href="index.html"><span>Start</span><span class="icon"></span></a> </div>
      <ul class="nav responsive">
        <li>
          <button class="btn responsive_menu icon_item" data-toggle="collapse" data-target=".overview"> <i class="icon-reorder"></i> </button>
        </li>
      </ul>
    </div>
<!-- Responsive part -->
<!-- Main Div Start   ---> 


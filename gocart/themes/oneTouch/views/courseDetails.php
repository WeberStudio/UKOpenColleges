<?php include('mainHeader.php'); ?>
<body class="home page page-template page-template-page-no_top-php theme-onetouch wpb-js-composer js-comp-ver-3.4.12 vc_responsive">



<div id="body-wrapper" >
<div id="body-wrapper-padding">
  <!--[if lt IE 7]>
                <div class="alert">Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different
                browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to
                experience this site.
                </div><![endif]-->
  <?php include('header.php'); ?>
    <script type="text/javascript" src="<?=base_url()?>gocart/themes/oneTouch/lib/jquery-1.9.0.min.js"></script>
    <!-- Add mousewheel plugin (this is optional) -->
    <script type="text/javascript" src="<?=base_url()?>gocart/themes/oneTouch/lib/jquery.mousewheel-3.0.6.pack.js"></script>
    <!-- Add fancyBox main JS and CSS files -->
    <script type="text/javascript" src="<?=base_url()?>gocart/themes/oneTouch/source/jquery.fancybox.js?v=2.1.4"></script>
    <link rel="stylesheet" type="text/css" href="<?=base_url()?>gocart/themes/oneTouch/source/jquery.fancybox.css?v=2.1.4" media="screen" />
    <!-- Add Button helper (this is optional) -->
    <link rel="stylesheet" type="text/css" href="<?=base_url()?>gocart/themes/oneTouch/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
    <script type="text/javascript" src="<?=base_url()?>gocart/themes/oneTouch/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
    <!-- Add Thumbnail helper (this is optional) -->
    <link rel="stylesheet" type="text/css" href="<?=base_url()?>gocart/themes/oneTouch/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
    <script type="text/javascript" src="<?=base_url()?>gocart/themes/oneTouch/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
    <!-- Add Media helper (this is optional) -->
    <script type="text/javascript" src="<?=base_url()?>gocart/themes/oneTouch/source/helpers/jquery.fancybox-media.js?v=1.0.5"></script>
    <script type="text/javascript">

		$(document).ready(function() {
			/*
			 *  Simple image gallery. Uses default settings
			 */

			$('.fancybox').fancybox();



		});
	</script>
    <style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	</style>
    <?php //echo theme_css('jquery.fancybox.css', true); ?>
    <?php //echo theme_css('jquery.fancybox-buttons.css', true); ?>
    <?php //echo theme_css('jquery.fancybox-thumbs.css', true); ?>
    <?php //echo theme_js('js/jquery.fancybox.js', true);?>
    <?php //echo theme_js('js/jquery.fancybox.pack.js', true);?>
    <?php //echo theme_js('js/jquery.fancybox-buttons.js', true);?>
    <?php //echo theme_js('js/jquery.fancybox-media.js', true);?>
    <?php //echo theme_js('js/jquery.fancybox-thumbs.js', true);?>
    <?php //echo theme_js('js/jquery.mousewheel-3.0.6.pack.js', true);?>
    <?php //echo theme_js('js/jquery-1.9.0.min.js', true);?>
    <?php include_once('courseDetailsContent.php'); ?>
  </div>
</div>
<?php include_once('footer.php'); ?>

 <?php include('mainHeader.php'); ?>
  <?php echo theme_css('basee.css', true); ?> 
  <link rel="stylesheet" type="text/css" media="screen" href="<?php echo theme_css('jquery-ui.css');?>">
		<script type="text/javascript" src="<?php echo theme_js('js/jquery.min.js');?>"></script>
		<script type="text/javascript" src="<?php echo theme_js('js/jquery-ui.min.js');?>"></script>

		<!-- elFinder CSS (REQUIRED) -->
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo theme_css('elfinder.min.css');?>">
		<link rel="stylesheet" type="text/css" media="screen" href="<?php echo theme_css('theme.css');?>">

		<!-- elFinder JS (REQUIRED) -->
		<script type="text/javascript" src="<?php echo theme_js('js/elfinder.min.js');?>"></script>

		<!-- elFinder translation (OPTIONAL) -->
		<script type="text/javascript" src="<?php echo theme_js('js/i18n/elfinder.ru.js');?>"></script>

		<!-- elFinder initialization (REQUIRED) -->
		<script type="text/javascript" charset="utf-8">
			$().ready(function() {
				var elf = $('#elfinder').elfinder({
					url : '<?=base_url('php')."/connector.php";?>'  // connector URL (REQUIRED)
					// lang: 'ru',             // language (OPTIONAL)
				}).elfinder('instance');
			});
		</script>
<body class="home page page-template page-template-page-no_top-php theme-onetouch wpb-js-composer js-comp-ver-3.4.12 vc_responsive">
        <script> var customStyleImgUrl = "images/custom-slider-img";</script>
        
          <?php //include('leftPanel.php'); ?>
        <a href="#"><img id="nominee" src="<?=theme_img("custom-slider-img/cssreel_nomineetag_yellow.png")?>" alt="" /></a>
		
        <div id="body-wrapper" >		
            <div id="body-wrapper-padding">			
                <!--[if lt IE 7]>
                <div class="alert">Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different
                browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to
                experience this site.
                </div><![endif]-->
                 <?php include('header.php'); ?> 
                 
                 <div class="line"> </div>
               
<div id="main">
  <div class="container">
        
    <div id="main_container">
      <div class="row-fluid">
        <?php include('dashboard_leftpanal.php');?>
        <!-- End .span3 -->
        
        <div class="span9">
<div class="row">
<div id="content" class="fifteen columns">
<div class="col-1">
 	<h3>My Fourms</h3>
          <div id="elfinder"></div>
</div>
</div>
</div>
          <!-- End .content --> 
        </div>
        <!-- End .span9 --> 
      </div>
      <!-- End .row-fluid --> 
      
    </div>
    <!-- End #container --> 
  </div>
 
</div>
            </div>
        </div>
        <?php include_once('footer.php'); ?> 
        
       
    </body>
</html>


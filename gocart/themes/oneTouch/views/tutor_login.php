 <?php include('mainHeader.php'); ?>  
<body class="home page page-template page-template-page-no_top-php theme-onetouch wpb-js-composer js-comp-ver-3.4.12 vc_responsive">
        <script> var customStyleImgUrl = "images/custom-slider-img";</script>
          <?php //include('leftPanel.php'); ?>
       
		
        <div id="body-wrapper" >		
            <div id="body-wrapper-padding">			
                <!--[if lt IE 7]>
                <div class="alert">Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different
                browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to
                experience this site.
                </div><![endif]-->
                 <?php include('header.php'); ?> 
                 
<!--=========inner content start===========-->              
                    <h1 class="page-title" style="padding: -9px;">
	<a class="all" href="javascript:void(0)">you can login here</a>
	</h1>
    <div class="line"> </div>
    
    <div class="four columns" style="left:30%;">
    <section id="woocommerce_login-2" class="widget-1 widget-first widget widget_login">
      <div class="widget-inner">
        <h3>Tutor Login</h3>
        
        <?php //echo form_open('secure/login', 'class="form-horizontal"'); ?>
        <form class="bs-docs-example form-horizontal" accept-charset="utf-8" method="post" action="<?=base_url()?>tutor_login/login">
          <p style="width: 325px;">
            <label for="user_login">Username or email</label>
            <input name="email" class="input-text" id="user_login" type="text">
          </p>
          <p style="width: 325px;">
            <label for="user_pass">Password</label>
            <input name="password" class="input-text" id="user_pass" type="password">
          </p>
          <p style="width: 325px;">
            <input class="submitbutton" name="submitted" id="wp-submit" value="Login →" type="submit">
            <input class="submitbutton" name="" id="wp-submit" value="Register" type="button" onClick="window.location='<?php echo site_url('tutor_login/register')?>'">
            
            <a href="javascript:viod(0);">Lost password?</a></p>
          <div>
            <input name="redirect_to" class="redirect_to" value="http://theme.crumina.net/onetouch/my-account/" type="hidden">
            <input name="testcookie" value="1" type="hidden">
            <input name="woocommerce_login" value="1" type="hidden">
            <input name="rememberme" value="forever" type="hidden">
            <input type="hidden" value="<?php //echo $redirect; ?>" name="redirect"/>
			<input type="hidden" value="submitted" name="submitted"/>
          </div>
        </form>
        <ul class="pagenav">
        </ul>
      </div>
    </section>
    
  </div>
<!--=========inner content end===========-->                  
                
                
            </div>
        </div>
        <?php include_once('footer.php'); ?> 
        
       
    </body>
</html>


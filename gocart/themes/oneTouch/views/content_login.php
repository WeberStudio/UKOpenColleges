    <h1 class="page-title" style="padding: -9px;">
	<a class="all" href="javascript:void(0)">you can login here</a>
	</h1>
    <div class="line"> </div>
    
    <div class="four columns" style="left:30%;">
    <section id="woocommerce_login-2" class="widget-1 widget-first widget widget_login">
      <div class="widget-inner">
        <h3>Customer Login</h3>
        
        <?php //echo form_open('secure/login', 'class="form-horizontal"'); ?>
        <form class="bs-docs-example form-horizontal" accept-charset="utf-8" method="post" action="<?=base_url()?>secure/login">
          <p>
            <label for="user_login">Username or email</label>
            <input name="email" class="input-text" id="user_login" type="text">
          </p>
          <p>
            <label for="user_pass">Password</label>
            <input name="password" class="input-text" id="user_pass" type="password">
          </p>
          <p>
            <input class="submitbutton" name="submitted" id="wp-submit" value="Login →" type="submit">
            <a href="http://theme.crumina.net/onetouch/wp-login.php?action=lostpassword">Lost password?</a></p>
          <div>
            <input name="redirect_to" class="redirect_to" value="http://theme.crumina.net/onetouch/my-account/" type="hidden">
            <input name="testcookie" value="1" type="hidden">
            <input name="woocommerce_login" value="1" type="hidden">
            <input name="rememberme" value="forever" type="hidden">
            <input type="hidden" value="<?php echo $redirect; ?>" name="redirect"/>
			<input type="hidden" value="submitted" name="submitted"/>
          </div>
        </form>
        <ul class="pagenav">
        </ul>
      </div>
    </section>
    <section id="shopping_cart-2" class="widget-2 widget widget_shopping_cart">
      <div class="widget-inner">
        <h3>Cart</h3>
        <!--mfunc woocommerce_mini_cart() -->
        <ul class="cart_list product_list_widget ">
          <li class="empty">No products in the cart.</li>
        </ul>
        <!-- end product list -->
        <!--/mfunc-->
      </div>
    </section>
  </div>
 
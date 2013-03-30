<div id="sidebar" class="">
  <div class="scrollbar">
    <div class="track">
      <div class="thumb">
        <div class="end"></div>
      </div>
    </div>
  </div>
  <div class="viewport ">
    <div class="overview collapse">
      <div class="search row-fluid container">
        <h2>Search</h2>
        <form class="form-search">
          <div class="input-append">
            <input type="text" class=" search-query" placeholder="">
            <button class="btn_search color_4">Search</button>
          </div>
        </form>
      </div>
      <ul id="sidebar_menu" class="navbar nav nav-list container full">
        <li class="accordion-group active color_4"> <a class="dashboard" href="<?=base_url().ADMIN_PATH?>dashboard"><img src="<?=base_url().ASSETS_PATH?>img/menu_icons/dashboard.png"><span>Dashboard</span></a> </li>
        <li class="accordion-group color_7"> <a class="accordion-toggle widgets collapsed " data-toggle="collapse" data-parent="#sidebar_menu" href="#collapse1"> <img src="<?=base_url().ASSETS_PATH?>img/menu_icons/forms.png"><span>Catalog</span></a>
          <ul id="collapse1" class="accordion-body collapse">
            <li><a href="<?=base_url().ADMIN_PATH?>categories">Categories</a></li>
            <li><a href="<?=base_url().ADMIN_PATH?>products">Courses</a></li>
            <!--<li><a href="<?=base_url().ADMIN_PATH?>digital_products">Digital Products</a></li>-->
          </ul>
        </li>
        <? if(isset($this->admin_access) && $this->admin_access=='Superadmin'){ ?>
        <li class="accordion-group color_3"> <a class="accordion-toggle widgets collapsed" data-toggle="collapse" data-parent="#sidebar_menu" href="#collapse2"> <img src="<?=base_url().ASSETS_PATH?>img/menu_icons/widgets.png"><span>Sales</span></a>
          <ul id="collapse2" class="accordion-body collapse">
            <!--<li><a href="<?=base_url().ADMIN_PATH?>orders">Orders</a></li>-->
            <li><a href="<?=base_url().ADMIN_PATH?>customers">Customers</a></li>
            <li><a href="<?=base_url().ADMIN_PATH?>admin">Course Provider</a></li>
           <!-- <li><a href="<?=base_url().ADMIN_PATH?>customers/groups">Groups</a></li>
            <li><a href="<?=base_url().ADMIN_PATH?>reports">Reports</a></li>
            <li><a href="<?=base_url().ADMIN_PATH?>coupons">Coupons</a></li>
            <li><a href="<?=base_url().ADMIN_PATH?>giftcards">Giftcards</a></li>-->
          </ul>
        </li>
        <? } ?>
      </ul>
      <div class="menu_states row-fluid container ">
        <h2 class="pull-left">Menu Settings</h2>
        <div class="options pull-right">
          <button id="menu_state_1" class="color_4" rel="tooltip" data-state ="sidebar_icons" data-placement="top" data-original-title="Icon Menu">1</button>
          <button id="menu_state_2" class="color_4 active" rel="tooltip" data-state ="sidebar_default" data-placement="top" data-original-title="Fixed Menu">2</button>
          <button id="menu_state_3" class="color_4" rel="tooltip" data-placement="top" data-state ="sidebar_hover" data-original-title="Floating on Hover Menu">3</button>
        </div>
      </div>
      <!-- End sidebar_box --> 
      
    </div>
  </div>
</div> <br clear="all">
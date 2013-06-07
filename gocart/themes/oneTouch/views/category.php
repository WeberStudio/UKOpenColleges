<?php include('mainHeader.php'); ?>

<body class="home page page-template page-template-page-no_top-php theme-onetouch wpb-js-composer js-comp-ver-3.4.12 vc_responsive">



<div id="body-wrapper" >

<div id="body-wrapper-padding">

<?php include('header.php'); ?>

<? //Content Area Start ?>

<div class="page-header">

  <h1><?php echo $page_title; ?></h1>

</div>

<div class="row">

  <div class="fifteen columns">

    <div id="main">

      <div id="grid-posts" style="position: relative;" class="masonry">

	  

	  <? $photo	= theme_img('no_picture.png', lang('no_image_available')); ?>

	  <!--- All Courses Start  ---->

	  <?php foreach($products as $product):?>

        <article  class="mini masonry-brick" >          

          <div class="entry-content clearing-container">

            <div class="entry-thumb">

          		<a href="<?php echo site_url(implode('/', $base_url).'/'.$product->slug); ?>">				
				<? if(isset($product->images)){ ?>
		  		<img src="<?=base_url('uploads/images/small/'.$product->images)?>" alt="<?=$product->seo_title?>">
				<? } ?>
				</a>

        	</div>          

            <h2><a href="<?php echo site_url(implode('/', $base_url).'/'.$product->slug); ?>"><?=$product->name?></a></h2>        

            <p><?=$product->excerpt?></p>

          </div>		  

        </article>

		<?php endforeach?>

	 <!--- All Courses End  ---->		

      </div>

    </div>

    <? //Content Area End ?>

  </div>

</div>

</div>

</div>

<?php include_once('footer.php'); ?>

</body>

</html>
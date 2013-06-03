<?php include('mainHeader.php'); ?>  

     <?php include('header.php'); ?> 
<h1><?php echo $page_title; ?></h1> 
<?php echo html_entity_decode($page->content); ?>
<?php include_once('footer.php'); ?> 
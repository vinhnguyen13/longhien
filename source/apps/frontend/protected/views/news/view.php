<?php
/* @var $this SiteController */
$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
if(!empty($content->images) && is_file(Yii::getPathOfAlias('pathroot').$content->images)){
	$src = $content->images;
}
?>
<div class="block-content-small">
	<div class="title">Tin tức</div>
	
	<!--  .content-detail --> 
	<div class="content-detail">
	<h1><?php echo $content->title;?></h1>
	<h3><?php echo date("l - d/m/Y", $content->modified);?></h3>
		<img src="<?=$src?>">
	<?php echo $content->fulltext;?>
	</div>
	<!-- End .content-detail --> 
	<div class="clearb"></div>	
	
	<!-- .othernews --> 
	<?php 
	if(!empty($moreContents)):	  	
	?>
	<div class="othernews">
	<h2>Các Tin khác</h2>
	<ul>
	<?php 
	foreach ($moreContents as $item) {
		$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
  		if(!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot').$item->images)){
  			$src = $item->images;
  		}
  		$href = Yii::app()->createUrl('news/view', array('id'=>$item->id, 'slug'=>$item->slug));
	?>
	<li><a href="<?php echo $href;?>"><img alt="" src="<?php echo Yii::app()->createUrl($src);?>" width="65" height="50"></a> <strong><a href="<?php echo $href;?>"><?php echo $item->title;?></a></strong><br><?php echo date("l - d/m/Y", $item->modified);?></li>
	<?php 
	}
	?>
	</ul>
	</div>
	<?php 
	endif;
	?>
	<!-- End .othernews --> 

	<div class="content-footer"></div>
</div>



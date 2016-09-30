<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
<meta name="Description" content="Long Hiển - <?=!empty($this->metas['description']) ? CHtml::encode($this->metas['description']) : CHtml::encode($this->pageTitle);?>"/>
<meta name="Keywords" content="Máy may Jack, may may jack, LongHien, longhien,  <?=!empty($this->metas['keywords']) ? CHtml::encode($this->metas['keywords']) : CHtml::encode($this->pageTitle);?>"/>
<meta name="robots" content="index, follow" />
<meta name='viewport' content='width=device-width, initial-scale=1.0' >
<meta name="referrer" content="default"/>
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/swiper.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&amp;subset=vietnamese" rel="stylesheet">
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/libs.css" rel="stylesheet" type="text/css" media="all" />
<link href=http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.1/themes/ui-lightness/jquery-ui.css rel="stylesheet" type="text/css" media="all" />

<link href="<?php echo Yii::app()->theme->baseUrl; ?>/resources/css/mobile.css" rel="stylesheet" type="text/css" media="all" />


<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/velocity.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery-ui.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/swiper.jquery.min.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/carouselslideshow.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/slides.min.jquery.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/ddaccordion.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery.jqzoom-core.js" type="text/javascript"></script>
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/jquery.resizecrop-1.0.3.js" type="text/javascript"></script>

<script src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/scripts/script.js" type="text/javascript"></script>
</head>
<body>
	<?php echo $content; ?>
</body>
</html>

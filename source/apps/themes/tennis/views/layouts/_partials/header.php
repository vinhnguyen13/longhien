<?php 
$sections = (object)Yii::app()->params->sections;
$selecttitle = Yii::app()->request->getParam('selecttitle');
$cart = Yii::app()->session->readSession('cart');
$count = 0;
if(!empty($cart)){
	$cart = json_decode($cart);
	$count = count($cart);				
}
?>
<div id="header">
    <div id="logo"><a href="<?php echo Yii::app()->createUrl('site/index');?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/logo.png" alt="TENNIS XUXU"/></a></div>
    
    <!-- #search -->
    <div class="slogan">
        <h1>CÔNG TY TNHH DV TM XNK LONG HIỂN</h1>
    </div>
    <div id="search">
      <form method="post" action="<?php echo Yii::app()->createUrl('content/search');?>" id="formSearch" enctype="multipart/form-data">
          <a href="#" id="menu-mobi"></a>
          <div class="wrap-box-search">
            <fieldset class="bgsearch">
                <input type="text" name="keyword"  id="keyword" placeholder="Từ khóa tìm kiếm" />
            </fieldset>
            <input class="buttonsearch" name="send" type="submit" value="Tìm kiếm" />
          </div>
      </form>
    </div>
    <!-- End #search -->     
  </div>
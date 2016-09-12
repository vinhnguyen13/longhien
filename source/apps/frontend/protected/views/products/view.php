<?php
/* @var $this SiteController */
$src = Yii::app()->theme->baseUrl . '/resources/images/no_photo.jpg';
if (!empty($product->images) && is_file(Yii::getPathOfAlias('pathroot') . $product->images)) {
    $src = Yii::app()->createAbsoluteUrl($product->images);
}
$params = json_decode($product->params);
$price = 0;
if (!empty($product->price)) {
    $price = number_format($product->price);
}
$price_new = 0;
if (!empty($product->price_new)) {
    $price_new = number_format($product->price_new).' VND';
}else{
    $price_new = 'Liên hệ';
}
$clsAmount = '';
if (empty($product->amount)) {
    $clsAmount = ' out-of-stock';
}
?>

<div class="block-content-large content-margin">
    <h2><span class="bg">CHI TIẾT SẢN PHẨM</span></h2>
    <!--.product-detail -->
    <div class="product-detail inner-box">
        <div class="center-box">
            <div class="imgproduct"><a href="<?php echo $src; ?>" class="jqzoom" rel='gal1' title="image"><img
                    src="<?php echo $src; ?>" alt="image" class="imgpro"/></a></div>
            <!--.product-content -->
            <div class="product-content">
                <h1><?php echo $product->title; ?></h1>

                <div class="price">Giá: <span><?php echo $price_new; ?></span></div>
                <?php if (!empty($product->category->title)) { ?>
                    <div class="price">Thuộc loại: <span><?php echo $product->category->title; ?></span></div>
                <?php } ?>
                <div class="price">Ngày đăng: <span><?= date('d-m-Y', $product->modified); ?></span></div>
                <div class="desc">
                    <?php echo $product->fulltext; ?>
                </div>
                <div class="clearb"><br/>
                </div>
            </div>
            <div class="clearb"></div>
        </div>
        
        <!--End .product-content -->
    </div>
    <!--End .product-detail -->
    
</div>
<?php if (!empty($products)):?>
<div class="block-content-large content-margin">
    <h2 class="h2"><span class="bg">SẢN PHẨM CÙNG LOẠI</span></h2>
    <!--.items-content -->
    <div class="items-content inner-box">
        <div class="center-box">
        <?php
            foreach ($products as $item) {
                $src = Yii::app()->theme->baseUrl . '/resources/images/no_photo.jpg';
                if (!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot') . $item->images)) {
                    $src = $item->images;
                }
                $price = 0;
                if (!empty($item->price)) {
                    $price = number_format($item->price);
                }
                $price_new = 0;
                if (!empty($item->price_new)) {
                    $price_new = number_format($item->price_new).' VND';
                }else{
                    $price_new = 'Liên hệ';
                }
                $url = Yii::app()->createUrl('products/view', array('id' => $item->id, 'slug' => $item->slug));
                ?>
                <div class="items">
                    <?php if (!empty($item->promotions)): ?>
                        <!-- 	    	<span class="khuyenmai"></span>  -->
                    <?php endif; ?>
                    <?php if (!empty($item->new)): ?>
                        <!-- 	    	<span class="new-pro"></span>  -->
                    <?php endif; ?>
                    <a href="<?php echo $url; ?>" class="bgImg pic-intro"><img src="<?php echo $src; ?>" alt="" width="153"
                                                                     height="153"/></a><br/>
                    <strong class="blue"><a href="<?php echo $url; ?>"><?php echo $item->title; ?></a></strong>
                    <strong>Giá:</strong> <strong class="red"><?php echo $price_new; ?></strong></div>
            <?php
            }
            ?>
            <div class="clearb"></div>

            <!-- .paging1 -->
            <?php if (!empty($pages) && $pages->getItemCount() > $pages->getPageSize()): ?>
            <div class="paging1">
                <?php $this->widget('backend.extensions.ExtLinkPager', array('pages' => $pages,)); ?>
            </div>
            <?php endif; ?>
            <!-- End .paging1 -->
            </div>
    </div>
    <!--ENd .items-content -->
</div>
<?php endif; ?>

<?php
/* @var $this SiteController */

$this->pageTitle = Yii::app()->name;
?>
<div class="block-content-large content-margin">
    <h2><span class="bg">SẢN PHẨM</span></h2>
    <!--.items-content -->
    <div class="items-content inner-box">
        <div class="center-box">
        <?php
        if (!empty($products)):
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
                    $price_new = number_format($item->price_new).' VNĐ';
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
                                                                     height="153"/></a>
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
        <?php endif; ?>

        </div>
    </div>
    <!--ENd .items-content -->
</div>
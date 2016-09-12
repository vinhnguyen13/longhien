<?php
$title = !empty($section) ? $section->title : '';
?>
<div class="block-content-large th-box">
    <h2><span class="bg"><?=$title;?></span></h2>
    <div class="inner-box block-news">
        <div class="center-box">
            <?php
            if (!empty($content) && count($content) > 1):
                foreach ($content as $item) {
                    $src = $item->images;
                    ?>
                    <div class="news-items">
                        <a class="wrap-img pic-intro" href="#"><img alt="" src="<?php echo $src; ?>"></a>
                        <div>
                            <h3>
                                <a href="<?php echo Yii::app()->createUrl('services/view', array('id' => $item->id, 'slug' => $item->slug)) ?>"><?php echo $item->title; ?></a>
                            </h3>
                            <h4><?php echo date("l - d/m/Y", $item->modified); ?></h4>
                            <?php echo $item->introtext; ?>
                        </div>
                    </div>
                <?php
                }
            elseif(!empty($content) && count($content) == 1):
            ?>
                <div class="content-detail">
                    <?php echo $content[0]->fulltext;?>
                </div>
            <?php
            endif;
            ?>
            <div class="clearb"></div>
            <!-- .paging1 -->
            <?php if (!empty($pages) && $pages->getItemCount() > $pages->getPageSize()): ?>
                <div class="paging">
                    <?php $this->widget('backend.extensions.ExtLinkPager', array('pages' => $pages,)); ?>
                </div>
            <?php endif; ?>
            <!-- End .paging1 -->
        </div>
    </div>
</div>
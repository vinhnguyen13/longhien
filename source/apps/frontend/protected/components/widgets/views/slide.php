<div id="slidetop">
     <!-- .slides_container -->
     <div class="slideIndex swiper-container">
          <div class="bg-slide"></div>
          <div class="swiper-wrapper">
               <?php if(!empty($slides)):?>
                    <?php foreach ($slides as $slide):?>
                         <?php if($slide->file_path && $slide->type=='image'):?>
                         <div class="swiper-slide"> <a href="#" title=""><img src="<?php echo Yii::app()->createUrl($slide->file_path); ?>" alt=""></a></div>
                         <?php endif;?>
                    <?php endforeach;?>
               <?php else:?> 
                 <!-- .slide -->
                 <div class="swiper-slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide1.jpg" alt=""></a></div>
                 <!-- .slide -->
                 <div class="swiper-slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide2.jpg" alt=""></a></div>
                 <!-- .slide -->
                 <div class="swiper-slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide3.jpg" alt=""></a></div>
                 <!-- .slide -->
                 <div class="swiper-slide"> <a href="#" title=""><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/slide4.jpg" alt=""></a></div>
               <?php endif;?>   
          </div>
          <!-- Add Pagination -->
          <div class="swiper-pagination"></div>
     </div>
     <!-- End .slides_container --> 
</div>

<script>
     var swiper = new Swiper('.slideIndex', {
        pagination: '.slideIndex .swiper-pagination',
        paginationClickable: true,
        autoplay: 3000
     });
</script>
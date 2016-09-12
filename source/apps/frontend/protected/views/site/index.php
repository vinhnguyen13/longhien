<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
$advs = Advertising::model()->findAllByAttributes(array('position'=>'event'), array(
        'order' => 'created desc',
        'limit' => '1',
    ));
?>

<?php if(!empty($advs)):?>
	<script type="text/javascript">
	$(document).ready(function(){
		$( ".events" ).dialog({
			/*
		    dragStart: function() {
		        $( this ).hide();
		    },
		    dragStop: function() {
		        $( this ).show();
		    }
		    */
			title: "Events",
			modal: true,
			draggable: false,
			resizable: false,
			width: 'auto',
		});
	});
	</script>
	<div class="events" style="display: none;">	
	<?php foreach ($advs as $adv):?>
		<?php if($adv->file_path && $adv->type=='image'):?>
			<a href="<?php echo $adv->link;?>" target="_blank"><img  src="<?php echo Yii::app()->createAbsoluteUrl($adv->file_path); ?>" /></a>
		<?php endif;?>
	<?php endforeach;?>
	</div>
<?php endif;?>

<div class="block-content-large content-margin">
	<h2><span class="bg">sẢN PHẨM Mới</span></h2>
	<div class="inner-box">
		<div class="center-box">
			<!-- .slideshow -->
			<?php if(!empty($products2)):?>
			<div class="slideProduct swiper-container">
		        <div class="swiper-wrapper">
		            <?php 
					foreach ($products2 as $item) {
				  		$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
				  		if(!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot').$item->images)){
				  			$src = $item->images;
				  		}
				  		$price = 0;
				  		if(!empty($item->price_new)){
				  			$price = number_format((int)$item->price_new).' VND';
				  		}else{
							$price = 'Liên hệ';
						}
				  		$url = Yii::app()->createUrl('products/view', array('id'=>$item->id, 'slug'=>$item->slug));
					  ?> 
					<div class="swiper-slide">
						<a class="pic-intro" href="<?php echo $url;?>" title="<?=$item->title?>"><img src="<?php echo $src;?>" alt="" /></a>
				        <strong class="blue" title="<?=$item->title?>"><?php echo Util::partString($item->title, 0, 30);?></strong>
				        <strong>Giá:</strong>
				        <strong class="red"><?php echo $price;?></strong>	
					</div>
			        <?php 
					}
			        ?>
		        </div>
		        <!-- Add Arrows -->
		    </div>
		    <div class="swiper-button-next"></div>
	    	<div class="swiper-button-prev"></div>
    	</div>
    </div>
    <?php endif;?>
	<!-- End .slideshow -->
</div>

<div class="block-content-large"> 
	  
	  <h3><span class="bg">SẢN PHẨM BÁN CHẠY</span></h3>
	  <!--.items-content -->

	  <div class="items-content inner-box">
	  	<div class="center-box">
		  	<?php 
			  if(!empty($products)):
			  	foreach ($products as $item) {
			  		$src = Yii::app()->theme->baseUrl.'/resources/images/no_photo.jpg';
			  		if(!empty($item->images) && is_file(Yii::getPathOfAlias('pathroot').$item->images)){
			  			$src = $item->images;
			  		}
			  		$price = 0;
					if (!empty($product->price_new)) {
						$price_new = number_format($product->price_new).' VND';
					}else{
						$price_new = 'Liên hệ';
					}
			  		$url = Yii::app()->createUrl('products/view', array('id'=>$item->id, 'slug'=>$item->slug));
			  ?>
		    <div class="items">
		    <?php if(!empty($item->promotions)):?>
	<!-- 	    	<span class="khuyenmai"></span>  -->
		    <?php endif;?>
		    <?php if(!empty($item->new)):?>
	<!-- 	    	<span class="new-pro"></span>  -->
		    <?php endif;?>
		    <a href="<?php echo $url;?>" class="bgImg pic-intro"><img src="<?php echo $src;?>" alt="" width="153" height="153" /></a>
		      <strong class="blue"><a href="<?php echo $url;?>"><?php echo $item->title;?></a></strong>
		      <strong>Giá:</strong> <strong class="red"><?php echo $price_new;?></strong> </div>
		    <?php 
			  	}		  	
			  ?>
		    <div class="clearb"></div>
		    <?php endif;?>
	    </div>
	  </div>
	  <!--ENd .items-content -->
	  
	</div>



<div class="block-content-large">
	<h3><span class="bg">Tin Tức </span></h3>
	<!--.items-content -->
	<div class="block-news inner-box">
		<div class="center-box">
			<?php
			if (!empty($content) && count($content) > 1):
				foreach ($content as $item) {
					$src = $item->images;
					?>
					<div class="news-items">
						<a class="pic-intro wrap-img" href="<?php echo Yii::app()->createUrl('content/view', array('id' => $item->id, 'slug' => $item->slug)) ?>"><img alt="" src="<?php echo $src; ?>"></a>
						<div>
							<h5>
								<a href="<?php echo Yii::app()->createUrl('content/view', array('id' => $item->id, 'slug' => $item->slug)) ?>"><?php echo $item->title; ?></a>
							</h5>
							<h4><?php echo date("l - d/m/Y", $item->modified); ?></h4>
							<?php echo $item->introtext; ?>
						</div>
					</div>
					<?php
				}
			endif;
			?>
		</div>
	</div>
	<!--ENd .items-content -->
</div>

<script>
     var swiper = new Swiper('.slideProduct', {
        pagination: '.slideProduct .swiper-pagination',
        nextButton: '.swiper-button-next',
        prevButton: '.swiper-button-prev',
        slidesPerView: 5,
        spaceBetween: 0,
        autoplay: 1200,
        breakpoints: {
            1000: {
                slidesPerView: 5
            },
            768: {
                slidesPerView: 3
            },
            640: {
                slidesPerView: 2
            },
            480: {
                slidesPerView: 1
            }
        }
     });
</script>
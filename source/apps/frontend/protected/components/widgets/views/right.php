<?php 
$url = 'https://goo.gl/maps/TMN92ELrJr62';
?>
<div id="center-right"> 
        <!-- .support-address -->
        <div class="support-address">
          <h2>Hỗ trợ khách hàng</h2>
          <div class="clearb"></div>
          <p><strong>Chị Châu</strong> <span class="telspecial">090.3886232</span></p>
          <div class="clearb"></div>
          <p><strong>Anh Hiển</strong> <span class="telspecial">090.3947856</span></p>
          <div class="bottombg"></div>
        </div>
        <!-- End .support-address --> 
        <!-- .support-address -->
        <div class="support-address support-address-mar">
          <h3>Địa chỉ cửa hàng</h3>
          <p class="chatyahoo">54 Xuân Diệu, Phường 4, Quận Tân Bình, TP Hồ Chí Minh</p>
          <p class="checkmaps"><a href="<?php echo $url;?>">Xem bản đồ <img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/arrow-right2.png" alt="" /></a> <a href="<?php echo $url;?>"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/resources/images/maps.png" alt="" class="maps" /></a></p>
          <div class="bottombg1"></div>
        </div>
        <!-- End .support-address -->
        <div class="clearb"></div>
        <!-- .block-right -->
        <?php 
        if(Yii::app()->layout != 'products'){
        	$this->render('right-products', array('advs'=>$advs, 'products'=>$products));
        }
        ?>
      </div>
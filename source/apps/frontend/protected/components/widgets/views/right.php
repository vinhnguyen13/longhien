<?php 
$url = 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1904889704483!2d106.65228121532544!3d10.796717861769931!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752935dc649a6b%3A0xb7c3f14bd841a1f5!2zNTQgWHXDom4gRGnhu4d1LCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1464429247919';
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
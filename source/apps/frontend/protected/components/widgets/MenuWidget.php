<?php
class MenuWidget extends CWidget {
    public function run() {
    	$categories = Categories::model()->findAllByAttributes(array('parent_id'=>0));
    	$manufactories = Manufactory::model()->findAllByAttributes(array());
    	$this->render('menu', array(
    		'categories' => $categories, 
    		'manufactories' => $manufactories,
        ));
    }
}
?>
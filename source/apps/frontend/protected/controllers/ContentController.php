<?php
class ContentController extends Controller
{
	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
        $sectionid = Yii::app()->request->getParam('sec');
        $criteria = new CDbCriteria();
        $criteria->addCondition("sectionid=".$sectionid);
        /** Pagination **/
        $count = Content::model()->count($criteria);
        $pages=new CPagination($count);
        //Results per page
        $pages->pageSize=10;
        $pages->applyLimit($criteria);

        $content = Content::model()->findAll($criteria);

		$section = Sections::model()->findByPk($sectionid);
        $this->render('index', array(
            'content'=>$content,
            'pages' => $pages,
            'section' => $section,
        ));
	}
	
	public function actionIntroduction()
	{
		$content = Content::model()->findByAttributes(array('sectionid'=>$this->sections->introduction));
		if(!empty($content)){
			$this->metas['description'] = $content->introtext;
			$this->metas['keywords'] = $content->title;
		}
		$this->render('introduction', array(
			'content'=>$content
		));
	}
	
	public function actionServices()
	{
		$content = Content::model()->findByAttributes(array('sectionid'=>$this->sections->services));
		$this->render('services', array(
			'content'=>$content
		));
	}
	
	public function actionPayment()
	{
		$content = Content::model()->findByAttributes(array('sectionid'=>$this->sections->pay));
		$this->render('payment', array(
			'content'=>$content
		));
	}
	
	public function actionView($id, $slug = null)
	{
		$content = new Content();
		if(!empty($id)){
			$content = Content::model()->findByPk($id);
			if(!empty($content)){
				$this->metas['description'] = $content->introtext;
				$this->metas['keywords'] = $content->title;
			}
		}
		$this->render('view', array(
			'content'=>$content
		));
	}
	
	public function actionSearch()
	{
		$sections = (object)Yii::app()->params->sections;
		$keyword = Yii::app()->request->getPost('keyword');

		if(!empty($keyword)){
			Yii::app()->layout = 'products';
			$catid = Yii::app()->request->getParam('catid');
			$products = new Products();
			$criteria = new CDbCriteria();
			$criteria->addCondition("published=1");
			$criteria->addCondition("title LIKE '%$keyword%'");
			if(!empty($catid)){
				$criteria->addCondition("catid='$catid'");
			}
			/** Pagination **/
			$count = Products::model()->count($criteria);
	        $pages=new CPagination($count);
	        //Results per page
	        $pages->pageSize=10;
	        $pages->applyLimit($criteria);

	        $products = Products::model()->findAll($criteria);
	        $this->render("/products/index", array(
				'products'=>$products,
				'pages' => $pages
			));
		}
	}

}
<?php

class SiteController extends Controller
{
	/**
	 * Declares class-based actions.
	 */
	public function actions()
	{
		return array(
			// captcha action renders the CAPTCHA image displayed on the contact page
			'captcha'=>array(
				'class'=>'backend.extensions.captchaExtended.CaptchaExtendedAction',
				'mode'=> CaptchaExtendedAction::MODE_NUM,
				'offset'=>'4',
				'density'=>'0',
				'lines'=>'0',
				'fillSections'=>'0',
				'foreColor'=>'0x000000',
				'minLength'=>'6',
				'maxLength'=>'6',
				'fontSize'=>'20',
				'angle'=>false,
			),
// 			'captcha'=>array(
// 				'class'=>'CCaptchaAction',
// 				'backColor'=>0xFFFFFF,
// 			),
			// page action renders "static" pages stored under 'protected/views/site/pages'
			// They can be accessed via: index.php?r=site/page&view=FileName
			'page'=>array(
				'class'=>'CViewAction',
			),
		);
	}

	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		$catid = Yii::app()->request->getParam('catid');
		$products = new Products();
		$criteria = new CDbCriteria();
		$criteria->addCondition("published=1 AND fast_selling=1");
		if(!empty($catid)){
			$criteria->addCondition("catid='$catid'");
		}
		$criteria->order = 'modified DESC';
		/** Pagination **/
		$count = Products::model()->count($criteria);
        $pages=new CPagination($count);
        //Results per page
        $pages->pageSize=10;
        $pages->applyLimit($criteria);
        $products = Products::model()->findAll($criteria);
        $products2 = Products::model()->findAllByAttributes(array("new"=>1),
			array(
//				'order' => 'date desc',
				'limit' => 10,
			));
		$this->render('index', array(
			'products'=>$products,
			'products2'=>$products2,
			'pages' => $pages
		));
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);
		}
	}

	/**
	 * Displays the contact page
	 */
	public function actionContact()
	{
		$model=new ContactForm;
		if(isset($_POST['ContactForm']))
		{
			$model->attributes=$_POST['ContactForm'];
			if($model->validate())
			{
				$name='=?UTF-8?B?'.base64_encode($model->name).'?=';
				$subject='=?UTF-8?B?'.base64_encode($model->subject).'?=';
				$headers="From: $name <{$model->email}>\r\n".
					"Reply-To: {$model->email}\r\n".
					"MIME-Version: 1.0\r\n".
					"Content-type: text/plain; charset=UTF-8";
				if(Mailer::send(Yii::app()->params['adminEmail'] , $subject , $model->body )){
					//mail(Yii::app()->params['adminEmail'],$subject,$model->body,$headers);
					Yii::app()->user->setFlash('contact','Thank you for contacting us. We will respond to you as soon as possible.');
					$this->refresh();
				}
			}
		}
		$this->render('contact',array('model'=>$model));
	}

	/**
	 * Displays the login page
	 */
	public function actionLogin()
	{
		$model=new LoginForm;

		// if it is ajax validation request
		if(isset($_POST['ajax']) && $_POST['ajax']==='login-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}

		// collect user input data
		if(isset($_POST['LoginForm']))
		{
			$model->attributes=$_POST['LoginForm'];
			// validate user input and redirect to the previous page if valid
			if($model->validate() && $model->login())
				$this->redirect(Yii::app()->user->returnUrl);
		}
		// display the login form
		$this->render('login',array('model'=>$model));
	}

	/**
	 * Logs out the current user and redirect to homepage.
	 */
	public function actionLogout()
	{
		Yii::app()->user->logout();
		$this->redirect(Yii::app()->homeUrl);
	}
	
	public function actionInvite(){
		$from = Yii::app()->request->getParam('emailyou');
		$to = Yii::app()->request->getParam('emailreceiver');
		$subject='Thư giới thiệu.';
		$body = "Chào bạn <br/>";
		$body .= "Có $from đã giới thiệu bạn đến với website <a href=\"http://tennisxuxu.net\">http://tennisxuxu.net</a> của chúng tôi.";
		if(!empty($to)){
			if(Mailer::send($to , $subject , $body )){
				return true;
			}
		}
		return false;
	}
}
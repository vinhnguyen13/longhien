<?php

class DefaultController extends Controller
{
	public function actionIndex()
	{
		$this->render('index');
	}

	public function actionUpload()
	{
		$vmodel = new VModel();
		$fUpload = $vmodel->getFolder(Yii::getPathOfAlias('pathroot').DS.'uploads'.DS.'editor');
		$fileName = Util::getSlug($_FILES['imageName']['name']);
		$file = $fUpload.'/'.$fileName;
		$content = file_get_contents($_FILES['imageName']['tmp_name']);
		file_put_contents($file, $content);
		echo  '<div id="image">'.Yii::app()->request->getHostInfo().'/uploads/editor/'.$fileName.'</div>';
		exit;
	}

	public function actionImages()
	{
		$dir = Yii::getPathOfAlias('pathroot').DS.'uploads'.DS.'editor';
		$dh  = opendir($dir);
		while (false !== ($filename = readdir($dh))) {
			if(!in_array($filename, array('.', '..'))){
				$files[] = Yii::app()->request->getHostInfo().'/uploads/editor/'.$filename;
			}
		}
		echo json_encode($files);
		exit;
	}
}
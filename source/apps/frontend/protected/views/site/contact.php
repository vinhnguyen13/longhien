<?php
/* @var $this SiteController */
/* @var $model ContactForm */
/* @var $form CActiveForm */

$this->pageTitle=Yii::app()->name . ' - Contact Us';
$this->breadcrumbs=array(
	'Contact',
);
$url = 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1904889704483!2d106.65228121532544!3d10.796717861769931!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752935dc649a6b%3A0xb7c3f14bd841a1f5!2zNTQgWHXDom4gRGnhu4d1LCBQaMaw4budbmcgNCwgVMOibiBCw6xuaCwgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1464429247919';
?>
<div class="block-content-large content-margin">
	<h2><span class="bg">Liên hệ</span></h2>
	<div class="inner-box">
		<div class="center-box">
			<h4>thông tin liên hệ</h4>
	 <fieldset class="fieldset-contact">
	   <?php $form=$this->beginWidget('CActiveForm', array(
			'id'=>'contact-form',
			'enableClientValidation'=>true,
			'clientOptions'=>array(
				'validateOnSubmit'=>true,
			),
		)); ?>
		
			<p class="infotrue"><?php echo sprintf(Lang::t('contact', 'Fields with %s are required'), '<span class="required">*</span>');?>.</p>
			<div class="flash-success">
				<?php echo Yii::app()->user->getFlash('contact'); ?>
			</div>
			<?php echo $form->errorSummary($model); ?>
		
			<div class="input">
				<?php echo $form->labelEx($model,'name'); ?>
				<?php echo $form->textField($model,'name'); ?>
				<?php echo $form->error($model,'name'); ?>
			</div>
		
			<div class="input">
				<?php echo $form->labelEx($model,'email'); ?>
				<?php echo $form->textField($model,'email'); ?>
				<?php echo $form->error($model,'email'); ?>
			</div>
		
			<div class="input">
				<?php echo $form->labelEx($model,'subject'); ?>
				<?php echo $form->textField($model,'subject',array('size'=>60,'maxlength'=>128)); ?>
				<?php echo $form->error($model,'subject'); ?>
			</div>
		
			<div class="input">
				<?php echo $form->labelEx($model,'body'); ?>
				<?php echo $form->textArea($model,'body',array('rows'=>6, 'cols'=>50)); ?>
				<?php echo $form->error($model,'body'); ?>
			</div>
			
			<div class="input">
			<?php echo CHtml::activeLabel($model, 'verifyCode'); ?>
			<?php $this->widget('CCaptcha', array(
			                                    'buttonLabel'=>'Refresh'
			                        )); ?>
			<?php echo CHtml::error($model, 'verifyCode'); ?>
			</div>
		
			<div class="input buttons">
				<?php echo CHtml::submitButton(Lang::t('contact', 'Send Info'), array('class'=>'buttonsent')); ?>
				<?php echo CHtml::button(Lang::t('contact', 'Reset'), array('type'=>'reset', 'class'=>'buttonclear')); ?>
			</div>
		
		<?php $this->endWidget(); ?>
	</fieldset>    
	<div class="map-contact">
		<iframe width="573" scrolling="no" height="327" frameborder="0" class="maps-iframe" src="<?php echo $url;?>" marginwidth="0" marginheight="0"></iframe>
	</div>
		</div>
	</div>
	
</div>

<div class="form">

<?php $companyId = Yii::app()->user->companyId; ?>

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'user-info-form',
	'enableAjaxValidation'=>false,
	'focus'=>array($model,'factory_id'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>
    
    <div class="row">
		<?php echo $form->labelEx($model,'factory_id'); ?><br />
        <?php echo $form->dropDownList($model,'factory_id', CHtml::listData(FactoryInfo::model()->findAll('deleted=0' and 'company_id=$companyId'), 'id', 'factory_name')); ?>
		<?php echo $form->error($model,'factory_id'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'fullname'); ?>
		<?php echo $form->textField($model,'fullname',array('size'=>60,'maxlength'=>100, 'class'=>'large text')); ?>
		<?php echo $form->error($model,'fullname'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'department'); ?>
		<?php echo $form->textField($model,'department',array('size'=>50,'maxlength'=>50, 'class'=>'large text')); ?>
		<?php echo $form->error($model,'department'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'phone'); ?>
		<?php echo $form->textField($model,'phone',array('size'=>20,'maxlength'=>20, 'class'=>'large text')); ?>
		<?php echo $form->error($model,'phone'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>50,'maxlength'=>50, 'class'=>'large text')); ?>
		<?php echo $form->error($model,'email'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'address'); ?>
		<?php echo $form->textField($model,'address',array('size'=>60,'maxlength'=>300, 'class'=>'large text')); ?>
		<?php echo $form->error($model,'address'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'user_name'); ?>
		<?php echo $form->textField($model,'user_name',array('size'=>20,'maxlength'=>20, 'class'=>'large text')); ?>
		<?php echo $form->error($model,'user_name'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('size'=>20,'maxlength'=>20, 'class'=>'large text')); ?>
		<?php echo $form->error($model,'password'); ?>
	</div><br />
    
	<div class="row buttons">
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create Factory User' : 'Update Factory User', array("class"=>'submit')); ?>
	</div><br />

<?php $this->endWidget(); ?>

</div><!-- form -->
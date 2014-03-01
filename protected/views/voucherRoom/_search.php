<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'roomID'); ?>
		<?php echo $form->textField($model,'roomID'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'voucherId'); ?>
		<?php echo $form->textField($model,'voucherId'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'roomNumber'); ?>
		<?php echo $form->textField($model,'roomNumber',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'guestName'); ?>
		<?php echo $form->textField($model,'guestName',array('size'=>60,'maxlength'=>80)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'roomType'); ?>
		<?php echo $form->textField($model,'roomType',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numberOfGuest'); ?>
		<?php echo $form->textField($model,'numberOfGuest',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'roomCategory'); ?>
		<?php echo $form->textField($model,'roomCategory',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
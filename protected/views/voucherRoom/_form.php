<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'voucher-room-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'voucherId'); ?>
		<?php echo $form->textField($model,'voucherId'); ?>
		<?php echo $form->error($model,'voucherId'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'roomNumber'); ?>
		<?php echo $form->textField($model,'roomNumber',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'roomNumber'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'guestName'); ?>
		<?php echo $form->textField($model,'guestName',array('size'=>60,'maxlength'=>80)); ?>
		<?php echo $form->error($model,'guestName'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'roomType'); ?>
		<?php echo $form->textField($model,'roomType',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'roomType'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'numberOfGuest'); ?>
		<?php echo $form->textField($model,'numberOfGuest',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'numberOfGuest'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'roomCategory'); ?>
		<?php echo $form->textField($model,'roomCategory',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'roomCategory'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
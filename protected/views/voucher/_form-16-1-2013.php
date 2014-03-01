<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'voucher-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'voucherNumber'); ?>
		<?php echo $form->textField($model,'voucherNumber',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'voucherNumber'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hotelName'); ?>
		<?php echo $form->textField($model,'hotelName',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'hotelName'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hotelAddress'); ?>
		<?php echo $form->textField($model,'hotelAddress',array('size'=>60,'maxlength'=>250)); ?>
		<?php echo $form->error($model,'hotelAddress'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'checkIn'); ?>
		<?php echo $form->textField($model,'checkIn'); ?>
		<?php echo $form->error($model,'checkIn'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'checkOut'); ?>
		<?php echo $form->textField($model,'checkOut'); ?>
		<?php echo $form->error($model,'checkOut'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'confirmationNumber'); ?>
		<?php echo $form->textField($model,'confirmationNumber',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'confirmationNumber'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'guestName'); ?>
		<?php echo $form->textField($model,'guestName',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'guestName'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'agencyCode'); ?>
		<?php echo $form->textField($model,'agencyCode',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'agencyCode'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'mealPlan'); ?>
		<?php echo $form->textField($model,'mealPlan',array('size'=>20,'maxlength'=>20)); ?>
		<?php echo $form->error($model,'mealPlan'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'totalRoom'); ?>
		<?php echo $form->textField($model,'totalRoom',array('size'=>10,'maxlength'=>10)); ?>
		<?php echo $form->error($model,'totalRoom'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'paymentType'); ?>
		<?php echo $form->textField($model,'paymentType',array('size'=>60,'maxlength'=>80)); ?>
		<?php echo $form->error($model,'paymentType'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'remarks'); ?>
		<?php echo $form->textArea($model,'remarks',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'remarks'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'voucherIssuedBy'); ?>
		<?php echo $form->textField($model,'voucherIssuedBy',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'voucherIssuedBy'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->
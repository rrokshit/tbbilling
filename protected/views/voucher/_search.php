<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'voucherId'); ?>
		<?php echo $form->textField($model,'voucherId'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'voucherNumber'); ?>
		<?php echo $form->textField($model,'voucherNumber',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hotelName'); ?>
		<?php echo $form->textField($model,'hotelName',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hotelAddress'); ?>
		<?php echo $form->textField($model,'hotelAddress',array('size'=>60,'maxlength'=>250)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'checkIn'); ?>
		<?php echo $form->textField($model,'checkIn'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'checkOut'); ?>
		<?php echo $form->textField($model,'checkOut'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'confirmationNumber'); ?>
		<?php echo $form->textField($model,'confirmationNumber',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'guestName'); ?>
		<?php echo $form->textField($model,'guestName',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'agencyCode'); ?>
		<?php echo $form->textField($model,'agencyCode',array('size'=>30,'maxlength'=>30)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'mealPlan'); ?>
		<?php echo $form->textField($model,'mealPlan',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'totalRoom'); ?>
		<?php echo $form->textField($model,'totalRoom',array('size'=>10,'maxlength'=>10)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'paymentType'); ?>
		<?php echo $form->textField($model,'paymentType',array('size'=>60,'maxlength'=>80)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'remarks'); ?>
		<?php echo $form->textArea($model,'remarks',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'voucherIssuedBy'); ?>
		<?php echo $form->textField($model,'voucherIssuedBy',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
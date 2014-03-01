<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'mealVoucherId'); ?>
		<?php echo $form->textField($model,'mealVoucherId'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'voucherCode'); ?>
		<?php echo $form->textField($model,'voucherCode',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'date'); ?>
		<?php echo $form->textField($model,'date'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'agencyName'); ?>
		<?php echo $form->textField($model,'agencyName',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'groupFitName'); ?>
		<?php echo $form->textField($model,'groupFitName',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numberOfPerson'); ?>
		<?php echo $form->textField($model,'numberOfPerson'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'hotelRestaurant'); ?>
		<?php echo $form->textField($model,'hotelRestaurant',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'meal'); ?>
		<?php echo $form->textField($model,'meal',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
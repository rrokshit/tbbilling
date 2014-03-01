<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'billId'); ?>
		<?php echo $form->textField($model,'billId'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'billNo'); ?>
		<?php echo $form->textField($model,'billNo',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'clinetName'); ?>
		<?php echo $form->textField($model,'clinetName',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'noOfPerson'); ?>
		<?php echo $form->textField($model,'noOfPerson',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'arrivalDate'); ?>
		<?php echo $form->textField($model,'arrivalDate'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'natureOfPayment'); ?>
		<?php echo $form->textField($model,'natureOfPayment',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'agencyCode'); ?>
		<?php echo $form->textField($model,'agencyCode',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'clientEmail'); ?>
		<?php echo $form->textField($model,'clientEmail',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'staffCode'); ?>
		<?php echo $form->textField($model,'staffCode',array('size'=>20,'maxlength'=>20)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'serviceTax'); ?>
		<?php echo $form->textField($model,'serviceTax',array('size'=>11,'maxlength'=>11)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'educationOnST'); ?>
		<?php echo $form->textField($model,'educationOnST',array('size'=>11,'maxlength'=>11)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'sheOnST'); ?>
		<?php echo $form->textField($model,'sheOnST',array('size'=>11,'maxlength'=>11)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'grandTotal'); ?>
		<?php echo $form->textField($model,'grandTotal',array('size'=>11,'maxlength'=>11)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->
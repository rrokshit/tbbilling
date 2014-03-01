<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'company-logo-address-form',
	'enableAjaxValidation'=>true,
	'focus'=>array($model,'logo'),
	'htmlOptions'=>array('enctype'=>'multipart/form-data'),
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'logo'); ?><br /><br />
		<?php echo $form->fileField($model,'logo'); ?>
		<?php echo $form->error($model,'logo'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'company_name'); ?><br />
		<?php echo $form->textField($model,'company_name',array('size'=>60,'maxlength'=>100, 'class'=>'text large')); ?>
		<?php echo $form->error($model,'company_name'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'company_address'); ?><br />
		<?php echo $form->textArea($model,'company_address',array('size'=>60,'maxlength'=>250)); ?>
		<?php echo $form->error($model,'company_address'); ?>
	</div><br />

	<div class="row">
		<?php echo $form->labelEx($model,'optional'); ?><br />
		<?php echo $form->textField($model,'optional',array('size'=>60,'maxlength'=>250, 'class'=>'text large')); ?>
		<?php echo $form->error($model,'optional'); ?>
	</div><br />

	<div class="row buttons">
		<!--<input type="submit" class="submit" id="add" value="Create Company Logo" />-->
        <?php echo CHtml::submitButton($model->isNewRecord ? 'Create Company Logo' : 'Update Company Logo', array("class"=>'submit')); ?>
	</div><br />
<?php $this->endWidget(); ?>

</div><!-- form -->
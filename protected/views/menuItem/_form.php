<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'menu-item-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?><br />
		<?php echo $form->textField($model,'name',array('size'=>50,'maxlength'=>50, 'class'=>'text large')); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>
    
    <br />
    
    <div class="row">
    	<?php $baseUrl = Yii::app()->request->baseUrl; ?>
		<?php echo $form->labelEx($model,'link'); ?><br />
		<?php 
			if($_GET['id']!=''){
				echo $form->textField($model,'link',array('size'=>50, 'maxlength'=>100, 'class'=>'text large')); 
			}else{
				echo $form->textField($model,'link',array('size'=>50, 'maxlength'=>100, 'class'=>'text large', 'value'=>"$baseUrl/index.php/")); 
			}
		?>
		<?php echo $form->error($model,'link'); ?>
	</div>
	
    <br />
    
    <div class="row">
		<?php echo $form->labelEx($model,'parent'); ?><br />
		<select name="MenuItem[parent]" id="MenuItem_parent">
        	<option value="0">- - - - - - - Select Parent - - - - - - -</option>
        	<?php
				$get_options = $model->multi_level(0, 0);
				if (count($get_options) > 0){
			
				$categories = $id->id;
				foreach ($get_options as $key => $value) {
				
				$options .="<option value=\"$key\"";
				
				// show the selected items as selected in the listbox
				$model->findByPk($id->id);
				if ($model->parent== "$key") {
				$options .=" selected=\"selected\"";
				}
				$options .=">$value</option>";
				}
				}
				echo $options;
			?>
        </select>
	</div>
    
    <br />    
    
	<div class="row">
		<?php //echo $form->labelEx($model,'parent'); ?>
		<?php //echo $form->textField($model,'parent'); ?>
		<?php //echo $form->error($model,'parent'); ?>
	</div>

	<div class="row buttons">
		<input type="submit" class="submit" id="add" value="Create Menu" />
	</div><br />

<?php $this->endWidget(); ?>

</div><!-- form -->
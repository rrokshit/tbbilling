<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<br /><br />
	<table>
        <tr>
			<td><?php echo $form->label($model,'id'); ?></td>
            <td><?php echo $form->textField($model,'id'); ?></td>
        </tr>
        
        <tr>
			<td><?php echo $form->label($model,'name'); ?></td>
            <td><?php echo $form->textField($model,'name',array('size'=>50,'maxlength'=>50)); ?></td>
        </tr>
        
        <tr>
			<td><?php echo $form->label($model,'parent'); ?></td>
            <td><?php echo $form->textField($model,'parent'); ?></td>
        </tr>
	</table>
        
       <input type="submit" class="submit" id="add" value="Search" />

<?php $this->endWidget(); ?>

</div><!-- search-form -->
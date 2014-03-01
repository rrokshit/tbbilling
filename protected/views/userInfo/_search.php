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
            <td><?php echo $form->label($model,'fullname'); ?></td>
            <td><?php echo $form->textField($model,'fullname',array('size'=>60,'maxlength'=>100)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'company'); ?></td>
            <td><?php echo $form->textField($model,'company',array('size'=>60,'maxlength'=>100)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'department'); ?></td>
            <td><?php echo $form->textField($model,'department',array('size'=>50,'maxlength'=>50)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'phone'); ?></td>
            <td><?php echo $form->textField($model,'phone',array('size'=>20,'maxlength'=>20)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'email'); ?></td>
            <td><?php echo $form->textField($model,'email',array('size'=>50,'maxlength'=>50)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'address'); ?></td>
            <td><?php echo $form->textField($model,'address',array('size'=>60,'maxlength'=>300)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'user_name'); ?></td>
            <td><?php echo $form->textField($model,'user_name',array('size'=>20,'maxlength'=>20)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'entry_date'); ?></td>
            <td><?php echo $form->textField($model,'entry_date'); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'entry_by'); ?></td>
            <td><?php echo $form->textField($model,'entry_by',array('size'=>60,'maxlength'=>100)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'update_date'); ?></td>
            <td><?php echo $form->textField($model,'update_date'); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'update_by'); ?></td>
            <td><?php echo $form->textField($model,'update_by',array('size'=>60,'maxlength'=>100)); ?></td>
        </tr>
    
        <tr>
            <td><?php echo $form->label($model,'type_id'); ?></td>
            <td><?php echo $form->textField($model,'type_id'); ?></td>
        </tr>

	</table>

	<input type="submit" class="submit" id="add" value="Search" />

<?php $this->endWidget(); ?>

</div><!-- search-form -->
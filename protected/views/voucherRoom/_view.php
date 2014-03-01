<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('roomID')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->roomID), array('view', 'id'=>$data->roomID)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('voucherId')); ?>:</b>
	<?php echo CHtml::encode($data->voucherId); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('roomNumber')); ?>:</b>
	<?php echo CHtml::encode($data->roomNumber); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('guestName')); ?>:</b>
	<?php echo CHtml::encode($data->guestName); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('roomType')); ?>:</b>
	<?php echo CHtml::encode($data->roomType); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numberOfGuest')); ?>:</b>
	<?php echo CHtml::encode($data->numberOfGuest); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('roomCategory')); ?>:</b>
	<?php echo CHtml::encode($data->roomCategory); ?>
	<br />


</div>
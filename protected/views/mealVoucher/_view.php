<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('mealVoucherId')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->mealVoucherId), array('view', 'id'=>$data->mealVoucherId)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('voucherCode')); ?>:</b>
	<?php echo CHtml::encode($data->voucherCode); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('date')); ?>:</b>
	<?php echo CHtml::encode($data->date); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('agencyName')); ?>:</b>
	<?php echo CHtml::encode($data->agencyName); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('groupFitName')); ?>:</b>
	<?php echo CHtml::encode($data->groupFitName); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numberOfPerson')); ?>:</b>
	<?php echo CHtml::encode($data->numberOfPerson); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('hotelRestaurant')); ?>:</b>
	<?php echo CHtml::encode($data->hotelRestaurant); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('meal')); ?>:</b>
	<?php echo CHtml::encode($data->meal); ?>
	<br />

	*/ ?>

</div>
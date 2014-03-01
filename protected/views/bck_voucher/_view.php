<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('voucherId')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->voucherId), array('view', 'id'=>$data->voucherId)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('voucherNumber')); ?>:</b>
	<?php echo CHtml::encode($data->voucherNumber); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('hotelName')); ?>:</b>
	<?php echo CHtml::encode($data->hotelName); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('hotelAddress')); ?>:</b>
	<?php echo CHtml::encode($data->hotelAddress); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('checkIn')); ?>:</b>
	<?php echo CHtml::encode($data->checkIn); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('checkOut')); ?>:</b>
	<?php echo CHtml::encode($data->checkOut); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('confirmationNumber')); ?>:</b>
	<?php echo CHtml::encode($data->confirmationNumber); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('guestName')); ?>:</b>
	<?php echo CHtml::encode($data->guestName); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('agencyCode')); ?>:</b>
	<?php echo CHtml::encode($data->agencyCode); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('mealPlan')); ?>:</b>
	<?php echo CHtml::encode($data->mealPlan); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('totalRoom')); ?>:</b>
	<?php echo CHtml::encode($data->totalRoom); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('paymentType')); ?>:</b>
	<?php echo CHtml::encode($data->paymentType); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('remarks')); ?>:</b>
	<?php echo CHtml::encode($data->remarks); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('voucherIssuedBy')); ?>:</b>
	<?php echo CHtml::encode($data->voucherIssuedBy); ?>
	<br />

	*/ ?>

</div>
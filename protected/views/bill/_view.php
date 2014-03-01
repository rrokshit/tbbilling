<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('billId')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->billId), array('view', 'id'=>$data->billId)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('billNo')); ?>:</b>
	<?php echo CHtml::encode($data->billNo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('clinetName')); ?>:</b>
	<?php echo CHtml::encode($data->clinetName); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('noOfPerson')); ?>:</b>
	<?php echo CHtml::encode($data->noOfPerson); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('arrivalDate')); ?>:</b>
	<?php echo CHtml::encode($data->arrivalDate); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('natureOfPayment')); ?>:</b>
	<?php echo CHtml::encode($data->natureOfPayment); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('agencyCode')); ?>:</b>
	<?php echo CHtml::encode($data->agencyCode); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('clientEmail')); ?>:</b>
	<?php echo CHtml::encode($data->clientEmail); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('staffCode')); ?>:</b>
	<?php echo CHtml::encode($data->staffCode); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('serviceTax')); ?>:</b>
	<?php echo CHtml::encode($data->serviceTax); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('educationOnST')); ?>:</b>
	<?php echo CHtml::encode($data->educationOnST); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('sheOnST')); ?>:</b>
	<?php echo CHtml::encode($data->sheOnST); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('grandTotal')); ?>:</b>
	<?php echo CHtml::encode($data->grandTotal); ?>
	<br />

	*/ ?>

</div>
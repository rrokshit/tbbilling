<?php
$this->breadcrumbs=array(
	'Vouchers'=>array('index'),
	$model->voucherId,
);

$this->menu=array(
	array('label'=>'List Voucher', 'url'=>array('index')),
	array('label'=>'Create Voucher', 'url'=>array('create')),
	array('label'=>'Update Voucher', 'url'=>array('update', 'id'=>$model->voucherId)),
	array('label'=>'Delete Voucher', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->voucherId),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Voucher', 'url'=>array('admin')),
);
?>

<h1>View Voucher #<?php echo $model->voucherId; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'voucherId',
		'voucherNumber',
		'hotelName',
		'hotelAddress',
		'checkIn',
		'checkOut',
		'confirmationNumber',
		'guestName',
		'agencyCode',
		'mealPlan',
		'totalRoom',
		'paymentType',
		'remarks',
		'voucherIssuedBy',
	),
)); ?>

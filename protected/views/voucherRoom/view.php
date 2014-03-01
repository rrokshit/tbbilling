<?php
$this->breadcrumbs=array(
	'Voucher Rooms'=>array('index'),
	$model->roomID,
);

$this->menu=array(
	array('label'=>'List VoucherRoom', 'url'=>array('index')),
	array('label'=>'Create VoucherRoom', 'url'=>array('create')),
	array('label'=>'Update VoucherRoom', 'url'=>array('update', 'id'=>$model->roomID)),
	array('label'=>'Delete VoucherRoom', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->roomID),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage VoucherRoom', 'url'=>array('admin')),
);
?>

<h1>View VoucherRoom #<?php echo $model->roomID; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'roomID',
		'voucherId',
		'roomNumber',
		'guestName',
		'roomType',
		'numberOfGuest',
		'roomCategory',
	),
)); ?>

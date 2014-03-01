<?php
$this->breadcrumbs=array(
	'Voucher Rooms'=>array('index'),
	$model->roomID=>array('view','id'=>$model->roomID),
	'Update',
);

$this->menu=array(
	array('label'=>'List VoucherRoom', 'url'=>array('index')),
	array('label'=>'Create VoucherRoom', 'url'=>array('create')),
	array('label'=>'View VoucherRoom', 'url'=>array('view', 'id'=>$model->roomID)),
	array('label'=>'Manage VoucherRoom', 'url'=>array('admin')),
);
?>

<h1>Update VoucherRoom <?php echo $model->roomID; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
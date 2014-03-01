<?php
$this->breadcrumbs=array(
	'Voucher Rooms'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List VoucherRoom', 'url'=>array('index')),
	array('label'=>'Manage VoucherRoom', 'url'=>array('admin')),
);
?>

<h1>Create VoucherRoom</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
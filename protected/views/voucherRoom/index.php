<?php
$this->breadcrumbs=array(
	'Voucher Rooms',
);

$this->menu=array(
	array('label'=>'Create VoucherRoom', 'url'=>array('create')),
	array('label'=>'Manage VoucherRoom', 'url'=>array('admin')),
);
?>

<h1>Voucher Rooms</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

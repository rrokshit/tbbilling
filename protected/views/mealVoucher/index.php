<?php
$this->breadcrumbs=array(
	'Meal Vouchers',
);

$this->menu=array(
	array('label'=>'Create MealVoucher', 'url'=>array('create')),
	array('label'=>'Manage MealVoucher', 'url'=>array('admin')),
);
?>

<h1>Meal Vouchers</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

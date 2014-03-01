<?php
$this->breadcrumbs=array(
	'Meal Vouchers'=>array('index'),
	$model->mealVoucherId,
);

$this->menu=array(
	array('label'=>'List MealVoucher', 'url'=>array('index')),
	array('label'=>'Create MealVoucher', 'url'=>array('create')),
	array('label'=>'Update MealVoucher', 'url'=>array('update', 'id'=>$model->mealVoucherId)),
	array('label'=>'Delete MealVoucher', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->mealVoucherId),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage MealVoucher', 'url'=>array('admin')),
);
?>

<h1>View MealVoucher #<?php echo $model->mealVoucherId; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'mealVoucherId',
		'voucherCode',
		'date',
		'agencyName',
		'groupFitName',
		'numberOfPerson',
		'hotelRestaurant',
		'meal',
	),
)); ?>

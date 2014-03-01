<?php
$this->breadcrumbs=array(
	'Meal Vouchers'=>array('index'),
	$model->mealVoucherId=>array('view','id'=>$model->mealVoucherId),
	'Update',
);

$this->menu=array(
	array('label'=>'List MealVoucher', 'url'=>array('index')),
	array('label'=>'Create MealVoucher', 'url'=>array('create')),
	array('label'=>'View MealVoucher', 'url'=>array('view', 'id'=>$model->mealVoucherId)),
	array('label'=>'Manage MealVoucher', 'url'=>array('admin')),
);
?>

<h1>Update MealVoucher <?php echo $model->mealVoucherId; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
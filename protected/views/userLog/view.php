<?php
$this->breadcrumbs=array(
	'User Logs'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List UserLog', 'url'=>array('index')),
	array('label'=>'Create UserLog', 'url'=>array('create')),
	array('label'=>'Update UserLog', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete UserLog', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	//array('label'=>'Manage UserLog', 'url'=>array('admin')),
);
?>

<h1>View UserLog #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'user_id',
		'user_ip',
		'log_time',
		'description',
		'company_id',
	),
)); ?>

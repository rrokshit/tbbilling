<?php
$this->breadcrumbs=array(
	'User Logs'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List UserLog', 'url'=>array('index')),
	array('label'=>'Create UserLog', 'url'=>array('create')),
	array('label'=>'View UserLog', 'url'=>array('view', 'id'=>$model->id)),
	//array('label'=>'Manage UserLog', 'url'=>array('admin')),
);
?>

<h1>Update UserLog <?php echo $model->id; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
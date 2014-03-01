<?php
$this->breadcrumbs=array(
	'User Logs'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List UserLog', 'url'=>array('index')),
	//array('label'=>'Manage UserLog', 'url'=>array('admin')),
);
?>

<h1>Create UserLog</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
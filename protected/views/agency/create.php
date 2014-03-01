<?php
$this->breadcrumbs=array(
	'Agencys'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Agency', 'url'=>array('index')),
	array('label'=>'Manage Agency', 'url'=>array('admin')),
);
?>

<h1>Create Agency</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
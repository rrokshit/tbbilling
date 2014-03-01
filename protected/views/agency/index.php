<?php
$this->breadcrumbs=array(
	'Agencys',
);

$this->menu=array(
	array('label'=>'Create Agency', 'url'=>array('create')),
	array('label'=>'Manage Agency', 'url'=>array('admin')),
);
?>

<h1>Agencys</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			array('label'=>'View All', 'url'=>array('index')),
			array('label'=>'Create New', 'url'=>array('create')),
			array('label'=>'Update', 'url'=>array('update', 'id'=>$model->id)),
			array('label'=>'Delete Now', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
			array('label'=>'Manage', 'url'=>array('admin')),
		),
	));
?>
</div>

<h1><?php echo $model->name; ?> Information</h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'link',
		'parent',
	),
)); ?>

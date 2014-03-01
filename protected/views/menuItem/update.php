<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			array('label'=>'View All', 'url'=>array('index')),
			array('label'=>'Create New', 'url'=>array('create')),
			array('label'=>'Manage', 'url'=>array('admin')),
		),
	));
?>
</div>

<h1>Update: <?php echo $model->name; ?></h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<?php

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('menu-item-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			array('label'=>'View All', 'url'=>array('index')),
			array('label'=>'Create New', 'url'=>array('create')),
		),
	));
?>
</div>

<h1>Manage Menu Items</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p><br />

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'menu-item-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id',
		'name',
		'link',
		'parent',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>

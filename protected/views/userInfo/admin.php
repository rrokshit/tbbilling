<?php

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('company-info-grid', {
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

<h1>MANAGE USER INFORMATION</h1>

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
	'id'=>'company-info-grid',
	'dataProvider'=>$model->search(),
	'emptyText'=>'There is no User Information in your database',
	'filter'=>$model,
	'columns'=>array(
		'id',
		'fullname',
		'company',
		'department',
		'phone',
		'email',
		array
			(            // display 'create_time' using an expression
				'name'=>'entry_date',
				'value'=>'date("M j, Y", strtotime($data->entry_date))',
				'htmlOptions'=>array("style"=>"text-align:center"),
				
			),
		array
			(            		// display 'Entry Date' using an expression
				'name'=>'entry_by',
				'value' => 'UserInfo::model()->FindByPk($data->entry_by)->fullname',
				'htmlOptions'=>array("style"=>"text-align:center"),
			),
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
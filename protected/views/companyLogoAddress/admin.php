<?php
$this->breadcrumbs=array(
	'Company Logo Addresses'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List CompanyLogoAddress', 'url'=>array('index')),
	array('label'=>'Create CompanyLogoAddress', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('company-logo-address-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>MANAGE COMPANY LOGO</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php

$adminB = "{update} {delete}";

if(Yii::app()->user->companyId == '0')
{
	$searchKey = $model->search_r();
}
else
{
	$searchKey = $model->search();
}
$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'company-logo-address-grid',
	'dataProvider'=>$searchKey,
	'filter'=>$model,
	'columns'=>array(
		 array(
			'class'=>'IndexColumn',
			'header'=>'S. No.',
			'htmlOptions'=>array("style"=>"text-align:center"),
		),
		'logo',
		'company_name',
		'company_address',
		'optional',
		array(
			'class'=>'CButtonColumn',
			'template'=>$adminB,
		),
	),
)); ?>

<?php
$this->breadcrumbs=array(
	'Menu Information',
);
?>

<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			array('label'=>'Create New', 'url'=>array('create')),
			array('label'=>'Manage', 'url'=>array('admin')),
		),
	));
?>
</div>

<h1>Menu Information</h1>

<?php
$this->widget('zii.widgets.grid.CGridView', array
			  (
				'dataProvider'=>$dataProvider,
				'emptyText'=>'There is no Menu Information in your database',
				'columns'=>array
				(
				'name',
				'link',
				'parent',
					array
					(            			// display a column with "view", "update" and "delete" buttons
						'class'=>'CButtonColumn',
					),
				),
				
			));
?>

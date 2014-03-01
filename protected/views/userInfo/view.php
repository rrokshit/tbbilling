<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			array('label'=>'View All', 'url'=>array('index')),
			array('label'=>'New User', 'url'=>array('create')),
			array('label'=>'New Factory User', 'url'=>array('fu_create')),
			array('label'=>'Update', 'url'=>array('update', 'id'=>$model->id)),
			array('label'=>'Delete Now', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
			//array('label'=>'Manage', 'url'=>array('admin')),
		),
	));
?>
</div>

<h1 style="text-transform:uppercase;"><?php echo $model->fullname; ?> INFORMATION</h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'fullname',
		array(               // related city displayed as a link
            'label'=>'Company',
            'value'=>CompanyInfo::model()->FindByPk($model->company)->company_name,
        ),
		'department',
		array
		(
			'label'=>'Unit',
			'value'=>CompanyUnit::model()->FindByPk($model->unitName)->name,
		),
		'phone',
		'email',
		'address',
		'user_name',
		'password',
		'status',
		'entry_date',
		array(               // related city displayed as a link
            'label'=>'Entry By',
            'value'=>UserInfo::model()->FindByPk($model->entry_by)->fullname,
        ),
	),
)); ?>
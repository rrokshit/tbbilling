<div id="icondock" class="grid_12">
<ul>
    <li><a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/companyLogoAddress" 'rel="tipsy" title="Header"'
		<?php if ($pageName=='Division') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images/icondock/favicon.png" /><br />
      Company Logo</a></li>
    <li><a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/signatoryInfo" 'rel="tipsy" title="Footer"'
		<?php if ($pageName=='District') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images/icondock/signature.png" /><br />
      Signature</a></li>
</ul>
</div>

<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			array('label'=>'View All', 'url'=>array('index')),
			array('label'=>'Create New', 'url'=>array('create')),
			array('label'=>'Update', 'url'=>array('update', 'id'=>$model->id)),
			array('label'=>'Delete Now', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
		),
	));
?>
</div>

<h1> COMPANY LOGO INFORMATION </h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'logo',
		'company_name',
		'company_address',
		'optional',
	),
)); ?>

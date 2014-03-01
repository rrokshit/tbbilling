<div id="icondock" class="grid_12">

<ul>
    <li>
    	<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/companyLogoAddress" 'rel="tipsy" title="Company Logo"'
		<?php if ($pageName=='Division') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images/icondock/favicon.png" /><br />
        Company Logo</a>
    </li>
    
    <li>
    	<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/signatoryInfo" 'rel="tipsy" title="Signature"'
		<?php if ($pageName=='District') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images/icondock/signature.png" /><br />
      	Signature</a>
    </li>
    
    <li>
    	<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/transportSettings" rel="tipsy" title="Transport">
    	<img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images/icondock/delivery_create.png" /><br />Transport</a>
    </li>
    
    <li>
    	<a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/numberPrefix" rel="tipsy" title="Number Prefix">
    	<img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images/icondock/prefix.png" /><br />Number Prefix</a>
    </li>
    
</ul>

</div>

<?php
$this->breadcrumbs=array(
	'Company Logo Information',
);
?>

<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			array('label'=>'Create New', 'url'=>array('create')),
		),
	));
?>
</div>

<h1>COMPANY LOGO INFORMATION</h1>

<?php
    Yii::app()->clientScript->registerScript(
       'myHideEffect',
       '$(".flash-success").animate({opacity: 1.0}, 3000).fadeOut("slow");',
       CClientScript::POS_READY
    );
?> 
<?php if(Yii::app()->user->hasFlash('success')):?>
    <div class="flash-success" style="margin-top:15px;">
        <?php echo Yii::app()->user->getFlash('success'); ?>
    </div>
<?php endif; ?>

<?php

$adminB = "{update} {delete}";

$this->widget('zii.widgets.grid.CGridView', array
			  (
				'dataProvider'=>$dataProvider,
				'emptyText'=>'There is no Company Logo Information in your database',
				'columns'=>array
				(
					array(
						'class'=>'IndexColumn',
						'header'=>'S. No.',
						'htmlOptions'=>array("style"=>"text-align:center"),
					),
					'logo',  // display the 'name' attribute of the 'category' relation
					'company_name',
					'company_address',
					'optional',
					array
					(            // display a column with "view", "update" and "delete" buttons
						'class'=>'CButtonColumn',
						'template'=>$adminB,
					),
				),
			));

?>

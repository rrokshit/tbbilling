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

<h1>UPDATE : COMPANY LOGO INFORMATION</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
<div class="clearfix">
<?php
  $this->widget('zii.widgets.CMenu',array(
		'htmlOptions'=>array('class'=>'operations'),
		'items'=>array(
			//array('label'=>'Manage', 'url'=>array('admin')),
			array('label'=>'View All', 'url'=>array('index')),
		),
	));
?>
</div>

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

<h1>CREATE FACTORY USER</h1>

<?php echo $this->renderPartial('factory_user', array('model'=>$model)); ?>
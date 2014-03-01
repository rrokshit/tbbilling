<?php
$this->breadcrumbs=array(
	'Users'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List User', 'url'=>array('index')),
	//array('label'=>'Manage User', 'url'=>array('admin')),
);
?>

<!-- --------------------------   SUCCESS MESSAGE SHOWING AREA START ----------------------------- -->
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
<!-- --------------------------   SUCCESS MESSAGE SHOWING AREA END ------------------------------ -->

<h1>Create User</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
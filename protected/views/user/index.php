<?php
$this->breadcrumbs=array(
	'Users',
);

$this->menu=array(
	array('label'=>'Create User', 'url'=>array('create')),
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

<h1>Users</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>

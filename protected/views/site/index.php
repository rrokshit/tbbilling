<?php $this->pageTitle=Yii::app()->name; Yii::app()->theme = 'ticket'; ?>

<div style="width:100%; text-align:center;">
			<?php 
			if(Yii::app()->user->name != 'Guest')
			{
				include_once('pages/dashboard.php');
			}
			?>
</div>

<?php
	if(Yii::app()->user->name === 'Guest')
	{
		Yii::app()->controller->redirect(array('login'));
	}
	else
	{
		
	}
?>

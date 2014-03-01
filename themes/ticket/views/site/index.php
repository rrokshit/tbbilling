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








<!--<p>Congratulations! You have successfully created your Yii application.</p>

<p>You may change the content of this page by modifying the following two files:</p>
<ul>
	<li>View file: <tt><?php echo __FILE__; ?></tt></li>
	<li>Layout file: <tt><?php echo $this->getLayoutFile('main'); ?></tt></li>
</ul>

<p>For more details on how to further develop this application, please read
the <a href="http://www.yiiframework.com/doc/">documentation</a>.
Feel free to ask in the <a href="http://www.yiiframework.com/forum/">forum</a>,
should you have any questions.</p>-->
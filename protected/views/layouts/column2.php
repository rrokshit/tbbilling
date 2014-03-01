<?php $this->beginContent('//layouts/main'); ?>
<div class="container">
	<div class="span-5 last">
		<div id="sidebar">
		<?php
			$this->beginWidget('zii.widgets.CPortlet', array(
				'title'=>'',
			));
			$this->widget('zii.widgets.CMenu', array(
				'items'=>$this->menu,
				'htmlOptions'=>array('class'=>'operations'),
			));
			$this->endWidget();
		?>
		</div><!-- sidebar -->
	</div>
    <div class="span-19">
		<div id="content">
			<p style="clear:both"><?php echo $content; ?></p>
		</div><!-- content -->
	</div>
	
</div>
<?php $this->endContent(); ?>
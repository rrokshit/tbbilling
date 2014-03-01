<?php $this->layout='fullscreen';?>

<?php 
	$typeId = $_GET['id'];
	
	$permission = explode(',',UserGroup::model()->findByPk($typeId)->menu_permission);
	/*for($i=0; $i<sizeof($permission); $i++)
	{
		echo $i+"1".". ".$permission[$i]."<br>";	
	}*/
	$parentMenu = MenuItem::model()->findAll("parent='0'");
	$p=0;
	foreach($parentMenu as $pmenu)
	{
		$p ++;
		if(in_array($pmenu['id'],$permission))
		{
			echo $p.". ".$pmenu['name']."<br>";
		}
		
		$c=0;
		$childMenu = MenuItem::model()->findAll("parent='".$pmenu['id']."'");
		foreach($childMenu as $cmenu)
		{
			$c++;
			if(in_array($cmenu['id'],$permission))
			{
				echo "&nbsp;&nbsp;&nbsp;&nbsp;".$p.".".$c." ".$cmenu['name']."<br>";	
			}
		}
	}

?>
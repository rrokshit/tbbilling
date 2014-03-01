<?php

class SysBackupController extends Controller
{
	protected function beforeAction($action)
	{
		if(Yii::app()->user->isGuest)
			$this->redirect($this->createUrl('/site/login'));
		else
			return true;	
	}
	
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}
	
	public function accessRules()
	{
		$userName = array('root','root');
		$aact=array('index','backup_tables');
		//yii user athentication system
		if(!empty(Yii::app()->user->userName) and !empty(Yii::app()->user->userType))
		{
			array_push($userName,Yii::app()->user->userName);
			$userType = Yii::app()->user->userType;
			
			$mp=UserGroup::model()->findByPk($userType)->menu_permission;
			
			$menuId = MenuItem::model()->find("link='/index.php/".Yii::app()->controller->id."'");
			$menuPermission = explode(',',$mp);
			
			if(in_array($menuId->id,$menuPermission))
			{
				$action = MenuAction::model()->findAll("menu_id='".$menuId->id."' and type_id='".$userType."'");
				
				foreach($action as $act)
				{
					array_push($aact,$act->action);	
				}
			}
		}
		
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index'),
				'users'=>array('*'),
			),
			/*array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update'),
				'users'=>array('@'),
			),*/
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>$aact,
				'users'=>$userName,
			),

			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}
	
	public function actionIndex()
	{
		$this->render('index');
	}
	
	/* backup the db OR just a table */
	public function backup_tables($host,$user,$pass,$name,$tables = '*')
	{
	  
	  $link = mysql_connect($host,$user,$pass);
	  mysql_select_db($name,$link);
	  
	  //get all of the tables
	  if($tables == '*')
	  {
		$tables = array();
		$result = mysql_query('SHOW TABLES');
		while($row = mysql_fetch_row($result))
		{
		  $tables[] = $row[0];
		}
	  }
	  else
	  {
		$tables = is_array($tables) ? $tables : explode(',',$tables);
	  }
	  
	  //cycle through
	  foreach($tables as $table)
	  {
		$result = mysql_query('SELECT * FROM '.$table);
		$num_fields = mysql_num_fields($result);
		
		$return.= 'DROP TABLE IF EXISTS '.$table.';';
		$row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
		$return.= "\n\n".$row2[1].";\n\n";
		
		for ($i = 0; $i < $num_fields; $i++) 
		{
		  while($row = mysql_fetch_row($result))
		  {
			$return.= 'INSERT INTO '.$table.' VALUES(';
			for($j=0; $j<$num_fields; $j++) 
			{
			  $row[$j] = addslashes($row[$j]);
			  $row[$j] = ereg_replace("\n","\\n",$row[$j]);
			  if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
			  if ($j<($num_fields-1)) { $return.= ','; }
			}
			$return.= ");\n";
		  }
		}
		$return.="\n\n\n";
	  }
	  
	  //save file
	 // $handle = fopen('db-backup-'.time().'-'.(md5(implode(',',$tables))).'.sql','w+');
	 
	 $fileName = 'dbBck/db-backup'.date("Y-m-d h-i-s").'.sql';
	 $files = date("Y-m-d h-i-s").'.sql';
	 
	 
	 $model = new DbBck;
	 $model->file_name = $files;
	 $model->save();
	 
	 $handle = fopen($fileName,'w+');
	  fwrite($handle,$return);
	  fclose($handle);
	}

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}
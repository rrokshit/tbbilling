<?php

class UserGroupController extends Controller
{
	protected function beforeAction($action)
	{
		if(Yii::app()->user->isGuest)
			$this->redirect($this->createUrl('/site/login'));
		else
			return true;	
	}
	
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		$userName = array('root','root');
		$aact=array('index','index');
		//yii user athentication system
		if(!empty(Yii::app()->user->userName) and !empty(Yii::app()->user->userType))
		{
			array_push($userName,Yii::app()->user->userName);
			$userType = Yii::app()->user->userType;
			
			$mp=UserGroup::model()->findByPk($userType)->menu_permission;
			
			$menuId = MenuItem::model()->find("link='/index.php/".Yii::app()->controller->id."'");
			$menuPermission = explode(',',$mp);
			$aact=array("0","0");
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

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new UserGroup;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['UserGroup']))
		{
			
			
			$model->attributes=$_POST['UserGroup'];
			
			$menu_item = $_POST['menu_permission'];
				if(count($menu_item) > 0)
				{
					$menu_list='';
					for ($i=0; $i<count($menu_item); $i++)
					{
						$menu_list .= $menu_item[$i].",";
					}
				}
			$model->menu_permission=$menu_list;
			
			
			
			if($_POST['approvedVoucher']=='13')
			{
				$actionM = new MenuAction;
						
				$actionM->menu_id = $_POST['approvedVoucher'];
				$actionM->action = 'approvedVoucher';
				$actionM->type_id = CommonController::myMaxID('user_group','id');
				$actionM->save();
			}
			
			$menu_action = $_POST['create'];
				if(count($menu_action) > 0)
				{
					for($i=0; $i<count($menu_action); $i++)
					{
						$actionM = new MenuAction;
						
						$actionM->menu_id = $menu_action[$i];
						$actionM->action = 'create';
						$actionM->type_id = CommonController::myMaxID('user_group','id');
						$actionM->save();
						
					}
				}
				
			$menu_action = $_POST['update'];
				if(count($menu_action) > 0)
				{
					for($i=0; $i<count($menu_action); $i++)
					{
						$actionM = new MenuAction;
						
						$actionM->menu_id = $menu_action[$i];
						$actionM->action = 'update';
						$actionM->type_id = CommonController::myMaxID('user_group','id');
						$actionM->save();
						
					}
				}
				
			$menu_action = $_POST['delete'];
				if(count($menu_action) > 0)
				{
					for($i=0; $i<count($menu_action); $i++)
					{
						$actionM = new MenuAction;
						
						$actionM->menu_id = $menu_action[$i];
						$actionM->action = 'delete';
						$actionM->type_id = CommonController::myMaxID('user_group','id');
						$actionM->save();
						
					}
				}
			
			if($model->save()){
				UserLog::model()->userLogs('Create', Yii::app()->user->userId, 'Create user group and privilige','user_group',$model->id);
				
				$this->redirect(array('index','id'=>$model->id));
			}
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['UserGroup']))
		{
			$model->attributes=$_POST['UserGroup'];
			
			$menu_item = $_POST['menu_permission'];
				if(count($menu_item) > 0)
				{
					$menu_list='';
					for ($i=0; $i<count($menu_item); $i++)
					{
						$menu_list .= $menu_item[$i].",";
						
					}
				}
			$model->menu_permission=$menu_list;
			
			$actionM = new MenuAction;
			$actionM->deleteAll("type_id='".$_GET['id']."'");
			
			
			if($_POST['approvedVoucher']=='13')
			{
				$actionM = new MenuAction;
						
				$actionM->menu_id = $_POST['approvedVoucher'];
				$actionM->action = 'approvedVoucher';
				$actionM->type_id = $_GET['id'];
				$actionM->save();
			}
			
			
			
			$menu_action = $_POST['create'];
				if(count($menu_action) > 0)
				{
					for($i=0; $i<count($menu_action); $i++)
					{
						$actionM = new MenuAction;
						
						$actionM->menu_id = $menu_action[$i];
						$actionM->action = 'create';
						$actionM->type_id = $_GET['id'];
						$actionM->save();
						
					}
				}
				
			$menu_action = $_POST['update'];
				if(count($menu_action) > 0)
				{
					for($i=0; $i<count($menu_action); $i++)
					{
						$actionM = new MenuAction;
						
						$actionM->menu_id = $menu_action[$i];
						$actionM->action = 'update';
						$actionM->type_id = $_GET['id'];
						$actionM->save();
						
					}
				}
				
			$menu_action = $_POST['delete'];
				if(count($menu_action) > 0)
				{
					for($i=0; $i<count($menu_action); $i++)
					{
						$actionM = new MenuAction;
						
						$actionM->menu_id = $menu_action[$i];
						$actionM->action = 'delete';
						$actionM->type_id = $_GET['id'];
						$actionM->save();
						
					}
				}
			
			if($model->save()){
				UserLog::model()->userLogs('Update', Yii::app()->user->userId, 'Update user group and privilige','user_group',$model->id);
				$this->redirect(array('index','id'=>$model->id));
			}
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		if(Yii::app()->request->isPostRequest)
		{
			// we only allow deletion via POST request
			$this->loadModel($id)->delete();
			UserLog::model()->userLogs('Delete', Yii::app()->user->userId, 'Delete user group and privilige','user_group',$id);
			
			// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
			if(!isset($_GET['ajax']))
				$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
		}
		else
			throw new CHttpException(400,'Invalid request. Please do not repeat this request again.');
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('UserGroup', array(
											  'criteria'=>array(
													'condition'=>"group_name!='Super Admin'",
													),
											  'pagination'=>array(
														'pageSize'=>'50',
														),
											  ));
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new UserGroup('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['UserGroup']))
			$model->attributes=$_GET['UserGroup'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer the ID of the model to be loaded
	 */
	public function loadModel($id)
	{
		$model=UserGroup::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CModel the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='user-group-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}

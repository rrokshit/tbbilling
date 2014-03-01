<?php
class CompanyLogoAddressController extends Controller
{
	protected function beforeAction($action)
	{
		if(Yii::app()->user-isGuest)
			$this->redirect(Yii::app()->createUrl('/site/login'));
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
		//-----------------------------------------------------------------------
		//user selected for admin
		$admin = UserInfo::model()->findAllBySql("select user_name from user_info where (type_id='0' or type_id='1') and company_id='".Yii::app()->user->companyId."' and unitName='0'");
		$adminPower=array("1","1");
		foreach($admin as $m):
			array_push($adminPower, $m->user_name);
		endforeach;
		
		//user selected for user
		$user = UserInfo::model()->findAllBySql("select user_name from user_info where type_id='2' and company_id='".Yii::app()->user->companyId."'");
		$userPower=array("1","1");
		foreach($user as $m):
			array_push($userPower, $m->user_name);
		endforeach;
		
		
		$aMenuId2User = UserInfo::model()->Find("id='".Yii::app()->user->userId."'")->menu_permission;
		
		$sMenuId2User = explode(",",$aMenuId2User);
		
		$userPowerByMenu=array("a","b");
		for($a=0; $a < sizeof($sMenuId2User); $a++)
		{
			//echo $sMenuId2User[$a];
			$menuItem = MenuItem::model()->findByPk("$sMenuId2User[$a]")->link;
			$menuItems = explode("/",$menuItem);
			
			if($menuItems[3]=='transportSettings' || $menuItems[3]=='signatoryInfo' || $menuItems[3]=='numberPrefix')
			{
				if($menuItems[4]=='')
					$menuItems[4] ='index';
					
				array_push($userPowerByMenu, $menuItems[4]);
			}
		}
		//---------------------------------------------------------------------------
		
		return array(
			/*array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),*/
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>$userPowerByMenu,
				//'users'=>array('@'),
				'users'=>$userPower,
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('index','create','update','delete'),
				'users'=>$adminPower,
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('root'),
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
		$model=new CompanyLogoAddress;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['CompanyLogoAddress']))
		{
			$model->attributes=$_POST['CompanyLogoAddress'];
			
			$model->logo=CUploadedFile::getInstance($model,'logo');
			$model->unit_id=Yii::app()->user->unitName;
			
			$model->company_id = Yii::app()->user->companyId;
			$command = Yii::app()->db->createCommand();
			$command->insert('user_log', array('user_id'=>Yii::app()->user->userId,
											   'user_ip'=>$_SERVER['REMOTE_ADDR'],
											   'log_time'=>date("Y-m-d h:i:s"),
										       'description'=>"Computer Logo Inserted",
											   'company_id'=>Yii::app()->user->companyId,
											  ));
			
			if($model->save())
				$model->logo->saveAs('themes/bscl/images/companyLogo/'.$model->logo);
				Yii::app()->user->setFlash('success', "CREATED SUCCESSFULLY");
				$this->redirect(array('index','id'=>$model->id));
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

		if(isset($_POST['CompanyLogoAddress']))
		{
			$model->attributes=$_POST['CompanyLogoAddress'];
			$model->unit_id=Yii::app()->user->unitName;
			$model->company_id = Yii::app()->user->companyId;
			$model->logo=CUploadedFile::getInstance($model,'logo');
			
			$command = Yii::app()->db->createCommand();
			$command->insert('user_log', array('user_id'=>Yii::app()->user->userId,
												'user_ip'=>$_SERVER['REMOTE_ADDR'],
												'log_time'=>date("Y-m-d h:i:s"),
												'description'=>"Computer Logo Updated",
												'company_id'=>Yii::app()->user->companyId,
											 	));
			
			if($model->save())
				$model->logo->saveAs('themes/bscl/images/companyLogo/'.$model->logo);
				Yii::app()->user->setFlash('success', "UPDATED SUCCESSFULLY");
				$this->redirect(array('index','id'=>$model->id));
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
			
			$model->company_id = Yii::app()->user->companyId;
			$command = Yii::app()->db->createCommand();
			$command->insert('user_log', array('user_id'=>Yii::app()->user->userId,
												'user_ip'=>$_SERVER['REMOTE_ADDR'],
												'log_time'=>date("Y-m-d h:i:s"),
												'description'=>"Computer Logo Deleted",
												'company_id'=>Yii::app()->user->companyId,
											 	));

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
		$dataProvider=new CActiveDataProvider('CompanyLogoAddress', array(
												'criteria'=>array(
												'condition'=>'company_id='.Yii::app()->user->companyId,
												'condition'=>'unit_id='.Yii::app()->user->unitName,
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
		$model=new CompanyLogoAddress('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['CompanyLogoAddress']))
			$model->attributes=$_GET['CompanyLogoAddress'];

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
		$model=CompanyLogoAddress::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='company-logo-address-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}

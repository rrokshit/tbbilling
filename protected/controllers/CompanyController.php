<?php

class CompanyController extends Controller {

    protected function beforeAction($action) {
        if (Yii::app()->user->isGuest)
            $this->redirect($this->createUrl('/site/login'));
        else
            return true;
    }

    /**
     * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
     * using two-column layout. See 'protected/views/layouts/column2.php'.
     */
    public $layout = '//layouts/column2';

    /**
     * @return array action filters
     */
    public function filters() {
        return array(
            'accessControl', // perform access control for CRUD operations
        );
    }

    /**
     * Specifies the access control rules.
     * This method is used by the 'accessControl' filter.
     * @return array access control rules
     */
    public function accessRules() {
        $userName = array('root', 'root');
        $aact = array('printVoucher', 'approvedPaymentVoucher', 'approvedVoucher', 'search', 'searchResult');
        //yii user athentication system
        if (!empty(Yii::app()->user->userName) and !empty(Yii::app()->user->userType)) {
            array_push($userName, Yii::app()->user->userName);
            $userType = Yii::app()->user->userType;

//			$mp=UserGroup::model()->findByPk($userType)->menu_permission;
//			
//			$menuId = MenuItem::model()->find("link='/index.php/".Yii::app()->controller->id."'");
//			$menuPermission = explode(',',$mp);
//			
//			if(in_array($menuId->id,$menuPermission))
//			{
//				$action = MenuAction::model()->findAll("menu_id='".$menuId->id."' and type_id='".$userType."'");
//				
//				foreach($action as $act)
//				{
//					array_push($aact,$act->action);	
//				}
//			}
        }

        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
                'actions' => array('index'),
                'users' => array('*'),
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => $aact,
                'users' => $userName,
            ),
            array('allow', // allow admin user to perform 'admin' and 'delete' actions
                'actions' => array('admin', 'delete', 'update'),
                'users' => array('root'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    /**
     * Displays a particular model.
     * @param integer $id the ID of the model to be displayed
     */
    public function actionView($id) {
        $this->render('view', array(
            'model' => $this->loadModel($id),
        ));
    }

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate() {
        $model = new Company;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Company'])) {
            $model->attributes = $_POST['Company'];

            //check is the user decide to upload Description Image Three, then do different operate
            if (@!empty($_FILES['Company']['name']['img'])) {
                $model->img = $model->generateRandomName(2);
                if ($model->validate(array('img'))) {
                    $model->img = CUploadedFile::getInstance($model, 'img');
                    $model->img->saveAs(Yii::app()->basePath . '/../company_img/' . $model->img);
                }
            } else {
                $model->img = '';
            }


            if ($model->save()) {
                UserLog::model()->userLogs('Create', Yii::app()->user->userId, 'Create a company', 'company', $model->id);
                $this->redirect(array('index'));
            }
        }

        $this->render('create', array(
            'model' => $model,
        ));
    }

    /**
     * Updates a particular model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id the ID of the model to be updated
     */
    public function actionUpdate($id) {
        $model = $this->loadModel($id);

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Company'])) {
            $model->attributes = $_POST['Company'];

            //check is the user decide to upload Description Image Three, then do different operate
            if (@!empty($_FILES['Company']['name']['img'])) {
                $model->img = $model->generateRandomName(2);
                if ($model->validate(array('img'))) {
                    $model->img = CUploadedFile::getInstance($model, 'img');
                    $model->img->saveAs(Yii::app()->basePath . '/../company_img/' . $model->img);
                }
            } else {
                $model->img = Company::model()->findByPk($_GET['id'])->img;
            }

            if ($model->save()) {
                UserLog::model()->userLogs('Update', Yii::app()->user->userId, 'Update a company', 'company', $model->id);
                $this->redirect(array('index'));
            }
        }

        $this->render('update', array(
            'model' => $model,
        ));
    }

    /**
     * Deletes a particular model.
     * If deletion is successful, the browser will be redirected to the 'admin' page.
     * @param integer $id the ID of the model to be deleted
     */
    public function actionDelete($id) {
        if (Yii::app()->request->isPostRequest) {
            // we only allow deletion via POST request
            $this->loadModel($id)->delete();
            UserLog::model()->userLogs('Delete', Yii::app()->user->userId, 'Delete a company', 'company', $id);

            // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
            if (!isset($_GET['ajax']))
                $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
        } else
            throw new CHttpException(400, 'Invalid request. Please do not repeat this request again.');
    }

    /**
     * Lists all models.
     */
    public function actionIndex() {
        $dataProvider = new CActiveDataProvider('Company', array('pagination' => array('pageSize' => '10'),));
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new Company('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Company']))
            $model->attributes = $_GET['Company'];

        $this->render('admin', array(
            'model' => $model,
        ));
    }

    /**
     * Returns the data model based on the primary key given in the GET variable.
     * If the data model is not found, an HTTP exception will be raised.
     * @param integer the ID of the model to be loaded
     */
    public function loadModel($id) {
        $model = Company::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param CModel the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'company-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}

<?php

class UserInfoController extends Controller {

    protected function beforeAction($action){
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
        $aact = array('index', 'myAccount', 'changePassword', 'encrypt', 'decrypt', 'showPermission', 'create','update','delete');

        //yii user athentication system
        if (!empty(Yii::app()->user->userName) and !empty(Yii::app()->user->userType)) {
            array_push($userName, Yii::app()->user->userName);
            $userType = Yii::app()->user->userType;

//            $mp = UserGroup::model()->findByPk($userType)->menu_permission;
//
//            $menuId = MenuItem::model()->find("link='/index.php/" . Yii::app()->controller->id . "'");
//            $menuPermission = explode(',', $mp);
//
//            if (in_array($menuId->id, $menuPermission)) {
//                $action = MenuAction::model()->findAll("menu_id='" . $menuId->id . "' and type_id='" . $userType . "'");
//
//                foreach ($action as $act) {
//                    array_push($aact, $act->action);
//                }
//            }
        }

        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
                'actions' => array('index'),
                'users' => array('*'),
            ),
            /* array('allow', // allow authenticated user to perform 'create' and 'update' actions
              'actions'=>array('create','update'),
              'users'=>array('@'),
              ), */
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => $aact,
                'users' => $userName,
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
    static public function encrypt($text) {
        return trim(base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, SALT, $text, MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND))));
    }

    public function decrypt($text) {
        return trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, SALT, base64_decode($text), MCRYPT_MODE_ECB, mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND)));
    }

    public function actionView($id) {
        $this->render('view', array(
            'model' => $this->loadModel($id),
        ));
    }

    public function actionShowPermission() {
        $this->render('showPermission');
    }

    public function actionMyAccount() {
        $dataProvider = new CActiveDataProvider('UserInfo', array(
                    'criteria' => array(
                        'condition' => "id='" . Yii::app()->user->userId . "'",
                    ),
                    'pagination' => array(
                        'pageSize' => '50',
                    ),
                ));

        $this->render('myAccount', array(
            'dataProvider' => $dataProvider,
        ));

        //$this->render('myAccount');	
    }

    public function actionChangePassword() {
        if ($_POST) {
            $currentP = $_POST['currentPw'];
            $newP = $_POST['newPw'];
            $renewP = $_POST['renewPw'];
            if ($newP == $renewP) {
                $findCurP = UserInfo::model()->findByPk(Yii::app()->user->userId)->password;
                if ($findCurP == $currentP) {
                    //YourModel::model()->updateAll(array('current'=>0),'parentId="'.$this->parentId.'"',);
                    UserInfo::model()->updateAll(array('password' => $newP), 'id="' . Yii::app()->user->userId . '"');
                    UserLog::model()->userLogs('Change Password', Yii::app()->user->userId, 'Change Password', 'user_info', Yii::app()->user->userId);

                    $this->redirect(array('changePassword', 'msg' => 'success'));
                }
                $this->redirect(array('changePassword', 'msg' => 'current_not_match', 'cur' => $currentP, 'findp' => $findCurP));
            }
            $this->redirect(array('changePassword', 'msg' => 'new_not_match'));
        }
        $this->render('changePassword');
    }

    /**
     * Creates a new model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     */
    public function actionCreate() {
        $model = new UserInfo;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['UserInfo'])) {


            $model->attributes = $_POST['UserInfo'];
            $model->password = $this->encrypt($_POST['UserInfo']['password']);
            $model->entry_by = Yii::app()->user->userId;
            $model->date_of_birth = date("Y-m-d", strtotime($_POST[UserInfo][date_of_birth]));

            //check is the user decide to upload Description Image Three, then do different operate
            if (@!empty($_FILES['UserInfo']['name']['avatar'])) {
                $model->avatar = $model->generateRandomName(2);
                if ($model->validate(array('avatar'))) {
                    $model->avatar = CUploadedFile::getInstance($model, 'avatar');
                    $model->avatar->saveAs(Yii::app()->basePath . '/../user_avatar/' . $model->avatar);
                }
            } else {
                $model->avatar = '';
            }

            //$command = Yii::app()->db->createCommand();

            /* $command->insert('user_log', array('user_id'=>Yii::app()->user->userId,
              'user_ip'=>$_SERVER['REMOTE_ADDR'],
              'log_time'=>date("Y-m-d h:i:s"),
              'description'=>"User Created",

              )); */




            if ($model->save()) {
                UserLog::model()->userLogs('Create', Yii::app()->user->userId, 'Create a user', 'user_info', $model->id);
                $this->redirect(array('create', 'id' => $model->id));
            }
        }


        $this->render('create', array(
            'model' => $model,
        ));
    }

    public function actionChange_pass() {
        $this->render('change_pass');
    }

    public function actionAct_change_pass() {
        $userid = Yii::app()->user->userId;
        $current_pass = $_POST['current_pass'];
        $new_pass = $_POST['new_pass'];
        $con_new_pass = $_POST['con_new_pass'];


        $command = Yii::app()->db->createCommand();
        $c_pass = $command->select("password")->from("user_info")->where("id='" . $userid . "'")->queryAll();

        if ($c_pass[0][password] != $current_pass) {
            Yii::app()->user->setFlash('error', "YOU HAVE ENTERED WRONG PASSWORD");
            $this->redirect(array('change_pass', 'id' => $model->id));
        } else if ($new_pass != $con_new_pass) {
            Yii::app()->user->setFlash('error', "CONFIRM PASSWORD NOT MATCH");
            $this->redirect(array('change_pass', 'id' => $model->id));
        } else {
            $command = Yii::app()->db->createCommand();
            $command->update("user_info", array("password" => $new_pass), "id='" . $userid . "'");

            Yii::app()->user->setFlash('success', "PASSWORD CHANGED SUCCESSFULLY");
            $this->redirect(array('change_pass', 'id' => $model->id));
        }
        //$this->redirect(array('change_pass'));
        $this->render('change_pass', array(
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

        if (isset($_POST['UserInfo'])) {
            $model->attributes = $_POST['UserInfo'];
            $model->password = $this->encrypt($_POST['UserInfo']['password']);
            $model->update_date = date("Y-m-d h:i:s");
            $model->update_by = Yii::app()->user->userId;

            $model->date_of_birth = date("Y-m-d", strtotime($_POST[UserInfo][date_of_birth]));

            //check is the user decide to upload Description Image Three, then do different operate
            if (@!empty($_FILES['UserInfo']['name']['avatar'])) {
                $model->avatar = $model->generateRandomName(2);
                if ($model->validate(array('avatar'))) {
                    $model->avatar = CUploadedFile::getInstance($model, 'avatar');
                    $model->avatar->saveAs(Yii::app()->basePath . '/../user_avatar/' . $model->avatar);
                }
            } else {
                $model->avatar = UserInfo::model()->findByPk($_GET['id'])->avatar;
            }

            /* $command = Yii::app()->db->createCommand();
              $command->insert('user_log', array('user_id'=>Yii::app()->user->userId,
              'user_ip'=>$_SERVER['REMOTE_ADDR'],
              'log_time'=>date("Y-m-d h:i:s"),
              'description'=>"User Updated",

              )); */


            if ($model->save()) {
                UserLog::model()->userLogs('Update', Yii::app()->user->userId, 'Update a user', 'user_info', $model->id);
                //Yii::app()->user->setFlash('success', "UPDATED SUCCESSFULLY");
                $this->redirect(array('index', 'id' => $model->id, 'menu' => $model->menu_permission));
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

            UserLog::model()->userLogs('Delete', Yii::app()->user->userId, 'Delete a user name is ' . UserInfo::model()->findByPk($id)->fullname, 'user_info', $id);

            $this->loadModel($id)->delete();
            // if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
            if (!isset($_GET['ajax']))
                $this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
        }
        else
            throw new CHttpException(400, 'Invalid request. Please do not repeat this request again.');
    }

    /**
     * Lists all models.
     */
    public function actionIndex() {
        
        
        if (Yii::app()->user->userType == 1) {
            $dataProvider = new CActiveDataProvider('UserInfo', array(
                        'criteria' => array(
                            'condition' => "type_id!='1' ",
                        ),
                        'pagination' => array(
                            'pageSize' => '50',
                        ),
                    ));
        } else {
            $dataProvider = new CActiveDataProvider('UserInfo', array(
                        'criteria' => array(
                            'condition' => "type_id!='1' ".$cond,
                        ),
                        'pagination' => array(
                            'pageSize' => '50',
                        ),
                    ));
        }

        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new UserInfo('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['UserInfo']))
            $model->attributes = $_GET['UserInfo'];

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
        $model = UserInfo::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param CModel the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'user-info-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}

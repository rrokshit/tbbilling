<?php

class VoucherController extends Controller {

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
        return array(
            array('allow', // allow all users to perform 'index' and 'view' actions
            //'actions'=>array('index','view','create','update','delete'),
            //'users'=>array('*'),
            ),
            array('allow', // allow authenticated user to perform 'create' and 'update' actions
                'actions' => array('create', 'update', 'admin', 'index', 'view', 'delete','pdf'),
                'users' => array('@'),
            ),
            array('allow', // allow admin user to perform 'admin' and 'delete' actions
                'actions' => array('admin', 'delete'),
                'users' => array('admin'),
            ),
            array('deny', // deny all users
                'users' => array('*'),
            ),
        );
    }

    public function actionPdf() {
        $mPDF1 = Yii::app()->ePdf->mpdf();
        $mPDF1 = Yii::app()->ePdf->mpdf('', 'A4', '', '', '5', '5', '5', '5');

        $mPDF1->WriteHTML($this->render('view', array(
                    'model' => $this->loadModel($_GET['id']),
                        ), true));
        $mPDF1->Output();
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
        $model = new Voucher;
        $modelVoucherRoom = new VoucherRoom;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Voucher'])) {
            $model->attributes = $_POST['Voucher'];
            $model->checkIn = date("Y-m-d",strtotime($_POST['Voucher']['checkIn']));
            $model->checkOut = date("Y-m-d",strtotime($_POST['Voucher']['checkOut']));
            if ($model->save()) {

                if ($_POST['VoucherRoom']) {
                    for ($i = 0; $i <= sizeof($_POST['VoucherRoom']['roomNumber']); $i++) {
                        $modelVoucherRoom = new VoucherRoom;
                        /* if ($_POST['VoucherRoom']['roomNumber'][$i] != '' && $_POST['VoucherRoom']['guestName'][$i] != '' && $_POST['VoucherRoom']['roomType'][$i] != '' && $_POST['VoucherRoom']['numberOfGuest'][$i] != '' && $_POST['VoucherRoom']['roomCategory'][$i] != '') { */
                        $modelVoucherRoom->roomNumber = $_POST['VoucherRoom']['roomNumber'][$i];
                        $modelVoucherRoom->guestName = $_POST['VoucherRoom']['guestName'][$i];
                        $modelVoucherRoom->roomType = $_POST['VoucherRoom']['roomType'][$i];
                        $modelVoucherRoom->numberOfGuest = $_POST['VoucherRoom']['numberOfGuest'][$i];
                        $modelVoucherRoom->roomCategory = $_POST['VoucherRoom']['roomCategory'][$i];
                        $modelVoucherRoom->voucherId = $model->voucherId;
                        $modelVoucherRoom->save();
                        //}
                    }
                }
                $this->redirect(array('admin','msg'=>'Voucher Generated Successfully.'));
            }
        }

        $this->render('create', array(
            'model' => $model,
            'modelVoucherRoom ' => $modelVoucherRoom,
        ));
    }

    /**
     * Updates a particular model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id the ID of the model to be updated
     */
    public function actionUpdate($id) {
        $model = $this->loadModel($id);
        $modelVoucherRoom = new VoucherRoom;

        // Uncomment the following line if AJAX validation is needed
        // $this->performAjaxValidation($model);

        if (isset($_POST['Voucher'])) {
            $model->attributes = $_POST['Voucher'];
            $model->checkIn = date("Y-m-d",strtotime($_POST['Voucher']['checkIn']));
            $model->checkOut = date("Y-m-d",strtotime($_POST['Voucher']['checkOut']));
            if ($model->save()){
                if ($_POST['VoucherRoom']) {
                    $modelVoucherRoom->deleteAll("voucherId='".$model->voucherId."'");
                    for ($i = 0; $i < sizeof($_POST['VoucherRoom']['roomNumber']); $i++) {
                        $modelVoucherRoom = new VoucherRoom;
                        $modelVoucherRoom->roomNumber = $_POST['VoucherRoom']['roomNumber'][$i];
                        $modelVoucherRoom->guestName = $_POST['VoucherRoom']['guestName'][$i];
                        $modelVoucherRoom->roomType = $_POST['VoucherRoom']['roomType'][$i];
                        $modelVoucherRoom->numberOfGuest = $_POST['VoucherRoom']['numberOfGuest'][$i];
                        $modelVoucherRoom->roomCategory = $_POST['VoucherRoom']['roomCategory'][$i];
                        $modelVoucherRoom->voucherId = $model->voucherId;
                        $modelVoucherRoom->save();
                    }
                }
                $this->redirect(array('admin', 'msg'=>'Voucer Updated Successfully.'));
            }
        }

        $this->render('update', array(
            'model' => $model,
            'modelVoucherRoom ' => $modelVoucherRoom,
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
        /*$dataProvider = new CActiveDataProvider('Voucher');
        $this->render('index', array(
            'dataProvider' => $dataProvider,
        ));*/
        $this->actionAdmin();
    }

    /**
     * Manages all models.
     */
    public function actionAdmin() {
        $model = new Voucher('search');
        $model->unsetAttributes();  // clear any default values
        if (isset($_GET['Voucher']))
            $model->attributes = $_GET['Voucher'];

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
        $model = Voucher::model()->findByPk($id);
        if ($model === null)
            throw new CHttpException(404, 'The requested page does not exist.');
        return $model;
    }

    /**
     * Performs the AJAX validation.
     * @param CModel the model to be validated
     */
    protected function performAjaxValidation($model) {
        if (isset($_POST['ajax']) && $_POST['ajax'] === 'voucher-form') {
            echo CActiveForm::validate($model);
            Yii::app()->end();
        }
    }

}

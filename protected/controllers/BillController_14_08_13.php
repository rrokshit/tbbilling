<?php

class BillController extends Controller
{
//        public function beforeAction()
//	{
//		if(Yii::app()->user->isGuest)
//			$this->redirect($this->createUrl('/site/login'));
//		else
//			return true;	
//	}
    
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
		$aact=array('index','create','update','delete','admin','mail','pdf','receive','pending');
		//yii user athentication system
		if(!empty(Yii::app()->user->userName) and !empty(Yii::app()->user->userType))
		{
                    array_push($userName,Yii::app()->user->userName);
                    $userType = Yii::app()->user->userType;
		}
                
		return array(
			
                        array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>$aact,
				'users'=>$userName,
			),
                        array('allow',  // deny all users
                                'actions'=>array('view','pdf','chkbill'),
				'users'=>array('*'),
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
        
        public function actionChkbill(){
            if($_POST){
                $bill = trim($_POST['bill']);
                //$email = trim($_POST['email']);
                $captchaResult = $_POST['captchaResult'];
                $captcha = trim($_POST['captcha']);
                if($captchaResult!=$captcha){
                    $this->redirect(array('bill/chkbill','msg'=>'Captcha Error. Please try again.'));
                }else{
                    //$chkbillemail = Bill::model()->find("billNo='".$bill."' and clientEmail='".$email."'");
                    $chkbillemail = Bill::model()->find("billNo='".$bill."'");
                    if(count($chkbillemail)>0){
                        $this->redirect(array('bill/view/','id'=>$chkbillemail->billId,'fromPage'=>'chkbill'));
                    }
                }
            }
            $this->render('chkbill');
            
        }
        
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}
        
        public function actionPdf(){
            $mPDF1 = Yii::app()->ePdf->mpdf();
            $mPDF1 = Yii::app()->ePdf->mpdf('', 'A4', '', '', '5', '5', '5', '5');

            $mPDF1->WriteHTML($this->render('view', array(
						'model' => $this->loadModel($_GET['id']),
						
							), true));
            $mPDF1->Output();
        }
        
        
        public function actionMail($id)
        {
            $bill = Bill::model()->find("billId='".$id."'");
            
            $to      = $bill->clientEmail;
            $subject = 'Bill Information From Travel Bureau';
            $message = "Thanks for doing Business with Travel Bureau. Kindly find below your Bill Number. Simply click below link to view and download your Bill.";
            $message .= "<br>Your Bill No. is : ".$bill->billNo;
            $message .= "<br><a href='http://travelbureauindia.com/".Yii::app()->request->baseurl.'/index.php/bill/'.$bill->billId."'>Please Click Here For Details In HTML Format</a>";
            $message .= "<br><a href='http://travelbureauindia.com/".Yii::app()->request->baseurl.'/index.php/bill/pdf/'.$bill->billId."'>Please Click Here For Details In PDF Format</a>";
            $headers  = 'MIME-Version: 1.0' . "\r\n";
            $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
            $headers .= 'From: info@travelbureau.com';
            mail($to, $subject, $message, $headers);
            $this->redirect(array('admin','msg'=>'Mail Sent Successfully.'));
        }
        
        public function actionReceive($id){
            Bill::model()->updateByPk($id, array('status'=>'Received'));
            $this->redirect(array('admin','msg'=>'Bill Received Successfully.'));
        }
        
        public function actionPending($id){
            Bill::model()->updateByPk($id, array('status'=>'Pending'));
            $this->redirect(array('admin','msg'=>'Bill Pending Successfully.'));
        }
        

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new Bill;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);
               

		if(isset($_POST['Bill']))
		{
                    $title = $_POST['Bill']['title'];
                    $agency = $_POST['Bill']['agencyCode'];
                    $staff = $_POST['Bill']['staffCode'];
                    $mm = date("m");
                    $yy = date("Y");
                    //$preFormat = $agency.'/'.$staff.'/'.$mm.'/'.$yy.'/';
                    $preFormat = date(Ymd);
                    $chkexists = Bill::model()->findAllBySql("select billNo from bill where billNo like '".$preFormat."%' order by billId desc limit 1");
                    if(sizeof($chkexists)>0){
                        $getLast = explode($preFormat,$chkexists[0]->billNo);
                        $billNo = $preFormat.str_pad($getLast[1]+1,3,"0",STR_PAD_LEFT);
                    }else{
                        $billNo = $preFormat.str_pad(1,3,"0",STR_PAD_LEFT);
                    }
                    

                    for($i=0; $i < sizeof($_POST['Bill']['amount']); $i++ ){
                        if($_POST['Bill']['amount'][$i]!=''){
                            $command = Yii::app()->db->createCommand();
                            $command->insert('billparticular', array(
                                'billNo'=>$billNo,
                                'particular'=>$_POST['Bill']['particular'][$i],
                                'serviceType'=>$_POST['Bill']['serviceType'][$i],
                                'amount'=>$_POST['Bill']['amount'][$i]
                            ));
                        }
                    }
                    

                    $command = Yii::app()->db->createCommand();
                    $command->insert('bill', array(
                        'billNo'=>$billNo,
                        'title'=>$title,
                        'clinetName'=>$_POST['Bill']['clinetName'],
                        'noOfPerson'=>$_POST['Bill']['noOfPerson'],
                        'arrivalDate'=>date("Y-m-d",  strtotime($_POST['Bill']['arrivalDate'])),
                        'natureOfPayment'=>$_POST['Bill']['natureOfPayment'],
                        'agencyCode'=>$_POST['Bill']['agencyCode'],
                        'clientEmail'=>$_POST['Bill']['clientEmail'],
                        'staffCode'=>$_POST['Bill']['staffCode'],
                        'taxType'=>$_POST['Bill']['taxType'],
                        'serviceTax'=>$_POST['Bill']['serviceTax'],
                        'educationOnST'=>$_POST['Bill']['educationOnST'],
                        'sheOnST'=>$_POST['Bill']['sheOnST'],
                        'grandTotal'=>$_POST['Bill']['grandTotal'],
                        'currency' => $_POST['Bill']['currency'],
                    ));
                    
                    $this->redirect(array('admin','msg'=>'Bill Generated Successfully.'));
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

		if(isset($_POST['Bill']))
		{
                    
                    Bill::model()->deleteAll("billNo='".$_POST['Bill']['billNo']."'");
                    Billparticular::model()->deleteAll("billNo='".$_POST['Bill']['billNo']."'");
                    
                    for($i=0; $i < sizeof($_POST['Bill']['amount']); $i++ ){
                        if($_POST['Bill']['amount'][$i]!=''){
                            $command = Yii::app()->db->createCommand();
                            $command->insert('billparticular', array(
                                'billNo'=>$_POST['Bill']['billNo'],
                                'particular'=>$_POST['Bill']['particular'][$i],
                                'serviceType'=>$_POST['Bill']['serviceType'][$i],
                                'amount'=>$_POST['Bill']['amount'][$i]
                            ));
                        }
                    }
                    
                    
                    
                    $command = Yii::app()->db->createCommand();
                    $command->insert('bill', array(
                        'billNo'=>$_POST['Bill']['billNo'],
                        'title'=>$_POST['Bill']['title'],
                        'clinetName'=>$_POST['Bill']['clinetName'],
                        'noOfPerson'=>$_POST['Bill']['noOfPerson'],
                        'arrivalDate'=>date("Y-m-d",  strtotime($_POST['Bill']['arrivalDate'])),
                        'natureOfPayment'=>$_POST['Bill']['natureOfPayment'],
                        'agencyCode'=>$_POST['Bill']['agencyCode'],
                        'clientEmail'=>$_POST['Bill']['clientEmail'],
                        'staffCode'=>$_POST['Bill']['staffCode'],
                        'taxType'=>$_POST['Bill']['taxType'],
                        'serviceTax'=>$_POST['Bill']['serviceTax'],
                        'educationOnST'=>$_POST['Bill']['educationOnST'],
                        'sheOnST'=>$_POST['Bill']['sheOnST'],
                        'grandTotal'=>$_POST['Bill']['grandTotal'],
                        'currency' => $_POST['Bill']['currency'],
                    ));
                    
                    $this->redirect(array('admin','msg'=>'Bill Updated Successfully.'));
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
//		$dataProvider=new CActiveDataProvider('Bill');
//		$this->render('admin',array(
//			'dataProvider'=>$dataProvider,
//		));
            $model=new Bill('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Bill']))
			$model->attributes=$_GET['Bill'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new Bill('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['Bill']))
			$model->attributes=$_GET['Bill'];

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
		$model=Bill::model()->findByPk($id);
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
		if(isset($_POST['ajax']) && $_POST['ajax']==='bill-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}

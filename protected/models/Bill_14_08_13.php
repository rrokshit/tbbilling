<?php

/**
 * This is the model class for table "bill".
 *
 * The followings are the available columns in table 'bill':
 * @property integer $billId
 * @property string $billNo
 * @property string $clinetName
 * @property string $noOfPerson
 * @property string $arrivalDate
 * @property string $natureOfPayment
 * @property string $agencyCode
 * @property string $clientEmail
 * @property string $staffCode
 * @property string $serviceTax
 * @property string $educationOnST
 * @property string $sheOnST
 * @property string $grandTotal
 */
class Bill extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Bill the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'bill';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('billId, billNo, clinetName, noOfPerson, natureOfPayment, agencyCode, clientEmail, staffCode, taxType, serviceTax, educationOnST, sheOnST, grandTotal, title, currency', 'required'),
			array('billId', 'numerical', 'integerOnly'=>true),
			array('billNo, noOfPerson, natureOfPayment, agencyCode, staffCode, status', 'length', 'max'=>20),
			array('clinetName, clientEmail,arrivalDate', 'length', 'max'=>50),
			array('serviceTax, educationOnST, sheOnST, grandTotal', 'length', 'max'=>11),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('billId, billNo, clinetName, noOfPerson, arrivalDate, natureOfPayment, agencyCode, clientEmail, staffCode, serviceTax, educationOnST, sheOnST, grandTotal', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'billId' => 'Bill',
			'billNo' => 'Bill No',
                        'title' => 'Title',
			'clinetName' => 'Client Name',
			'noOfPerson' => 'No Of Person',
			'arrivalDate' => 'Arrival Date',
			'natureOfPayment' => 'Nature Of Payment',
			'agencyCode' => 'Agency Code',
			'clientEmail' => 'Client Email',
			'staffCode' => 'Staff Code',
			'serviceTax' => 'Service Tax',
			'educationOnST' => 'Education On St',
			'sheOnST' => 'She On St',
			'grandTotal' => 'Grand Total',
                        'currency' => 'Currency',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search($from_date='',$to_date='')
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('billId',$this->billId);
		$criteria->compare('billNo',$this->billNo,true);
		$criteria->compare('clinetName',$this->clinetName,true);
		$criteria->compare('noOfPerson',$this->noOfPerson,true);
		//$criteria->compare('arrivalDate',$this->arrivalDate,true);
		$criteria->compare('natureOfPayment',$this->natureOfPayment,true);
		$criteria->compare('agencyCode',$this->agencyCode,true);
		$criteria->compare('clientEmail',$this->clientEmail,true);
		$criteria->compare('staffCode',$this->staffCode,true);
		$criteria->compare('serviceTax',$this->serviceTax,true);
		$criteria->compare('educationOnST',$this->educationOnST,true);
		$criteria->compare('sheOnST',$this->sheOnST,true);
		$criteria->compare('grandTotal',$this->grandTotal,true);
                $criteria->compare('currency',$this->currency,true);
                $criteria->compare('status',$this->status,true);
                if(isset($from_date) and $from_date!=''){
                    $from_date = date('Y-m-d',strtotime($from_date)).' 00:00:00';
                    $to_date = date('Y-m-d',strtotime($to_date)).' 23:59:59';
                    $criteria->addBetweenCondition('arrivalDate', $from_date, $to_date, 'AND');
                }

		return new CActiveDataProvider($this, array(
                        'pagination' => array(
                            'pageSize' => 200,
                        ),
			'criteria'=>$criteria,
		));
	}
        
        public function createUrl($id,$route,$type){
            return $route.'/index.php/bill/'.$type.'/'.$id;
        }
        
        public function rowColor($val){
            if($val=='Received')
                return 'green';
            else
                return 'red';
        }
        
        public function  randomdigit($digits)  {   
            static  $startseed  =  0;   
            if  (!$startseed)  { 
                  $startseed  =  (double)microtime()*getrandmax();   
                  srand($startseed); 
            } 
            $range  =  8; 
            $start  =  1; 
            $i  =  1; 
            while  ($i<$digits)  { 
                  $range  =  $range  .  9; 
                  $start  =  $start  .  0; 
                  $i++; 
            } 
            return  (rand()%$range+$start);   
      } 
}
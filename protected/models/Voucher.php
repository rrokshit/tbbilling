<?php

/**
 * This is the model class for table "voucher".
 *
 * The followings are the available columns in table 'voucher':
 * @property integer $voucherId
 * @property string $voucherNumber
 * @property string $hotelName
 * @property string $hotelAddress
 * @property string $checkIn
 * @property string $checkOut
 * @property string $confirmationNumber
 * @property string $guestName
 * @property string $agencyCode
 * @property string $mealPlan
 * @property string $totalRoom
 * @property string $paymentType
 * @property string $remarks
 * @property string $voucherIssuedBy
 */
class Voucher extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Voucher the static model class
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
		return 'voucher';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('voucherNumber, hotelName, hotelAddress, checkIn, confirmationNumber, guestName, agencyCode, mealPlan, totalRoom, paymentType, remarks, voucherIssuedBy', 'required'),
			array('voucherNumber', 'length', 'max'=>50),
			array('hotelName, guestName, voucherIssuedBy, hotelContact', 'length', 'max'=>100),
			array('hotelAddress', 'length', 'max'=>250),
			array('confirmationNumber, agencyCode', 'length', 'max'=>30),
			array('mealPlan', 'length', 'max'=>20),
			array('totalRoom', 'length', 'max'=>10),
			array('paymentType', 'length', 'max'=>80),
			array('checkOut', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('voucherId, voucherNumber, hotelName, hotelAddress, checkIn, checkOut, confirmationNumber, guestName, agencyCode, mealPlan, totalRoom, paymentType, remarks, voucherIssuedBy', 'safe', 'on'=>'search'),
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
			'voucherId' => 'Voucher',
			'voucherNumber' => 'Voucher #',
			'hotelName' => 'Hotel Name',
                        'hotelContact' => 'Contact #',
			'hotelAddress' => 'Hotel Address',
			'checkIn' => 'Check In',
			'checkOut' => 'Check Out',
			'confirmationNumber' => 'Confirmation #',
			'guestName' => 'Guest Name',
			'agencyCode' => 'Agency Code',
			'mealPlan' => 'Meal Plan',
			'totalRoom' => 'Total Room',
			'paymentType' => 'Payment Type',
			'remarks' => 'Remarks',
			'voucherIssuedBy' => 'Voucher Issued By',
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
                
                if(isset($this->checkIn) && $this->checkIn!=''){
                    $chkins = date('Y-m-d',strtotime($this->checkIn)).' 00:00:00 ';
                    $chkine = date('Y-m-d',strtotime($this->checkIn)).' 23:59:50 ';
                    $criteria->addBetweenCondition('checkIn',$chkins,$chkine);
                }
                if(isset($this->checkOut) && $this->checkOut!=''){
                    $chkouts = date('Y-m-d',strtotime($this->checkOut)).' 00:00:00 ';
                    $chkoute = date('Y-m-d',strtotime($this->checkOut)).' 23:59:50 ';
                    $criteria->addBetweenCondition('checkOut',$chkouts,$chkoute);
                }

		$criteria->compare('voucherId',$this->voucherId);
		$criteria->compare('voucherNumber',$this->voucherNumber,true);
		$criteria->compare('hotelName',$this->hotelName,true);
		$criteria->compare('hotelAddress',$this->hotelAddress,true);
		//$criteria->compare('checkIn',$this->checkIn,true);
		//$criteria->compare('checkOut',$this->checkOut,true);
		$criteria->compare('confirmationNumber',$this->confirmationNumber,true);
		$criteria->compare('guestName',$this->guestName,true);
		$criteria->compare('agencyCode',$this->agencyCode,true);
		$criteria->compare('mealPlan',$this->mealPlan,true);
		$criteria->compare('totalRoom',$this->totalRoom,true);
		$criteria->compare('paymentType',$this->paymentType,true);
		$criteria->compare('remarks',$this->remarks,true);
		$criteria->compare('voucherIssuedBy',$this->voucherIssuedBy,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
<?php

/**
 * This is the model class for table "meal_voucher".
 *
 * The followings are the available columns in table 'meal_voucher':
 * @property integer $mealVoucherId
 * @property string $voucherCode
 * @property string $date
 * @property string $agencyName
 * @property string $groupFitName
 * @property integer $numberOfPerson
 * @property string $hotelRestaurant
 * @property string $meal
 */
class MealVoucher extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return MealVoucher the static model class
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
		return 'meal_voucher';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('voucherCode, date, agencyName, groupFitName, numberOfPerson, hotelRestaurant, meal', 'required'),
			array('numberOfPerson', 'numerical', 'integerOnly'=>true),
			array('voucherCode, meal', 'length', 'max'=>50),
			array('agencyName, groupFitName, hotelRestaurant', 'length', 'max'=>100),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('mealVoucherId, voucherCode, date, agencyName, groupFitName, numberOfPerson, hotelRestaurant, meal', 'safe', 'on'=>'search'),
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
			'mealVoucherId' => 'Meal Voucher',
			'voucherCode' => 'Voucher Code',
			'date' => 'Date',
			'agencyName' => 'Agency Name',
			'groupFitName' => 'Group Fit Name',
			'numberOfPerson' => 'Number Of Person',
			'hotelRestaurant' => 'Hotel Restaurant',
			'meal' => 'Meal',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('mealVoucherId',$this->mealVoucherId);
		$criteria->compare('voucherCode',$this->voucherCode,true);
		$criteria->compare('date',$this->date,true);
		$criteria->compare('agencyName',$this->agencyName,true);
		$criteria->compare('groupFitName',$this->groupFitName,true);
		$criteria->compare('numberOfPerson',$this->numberOfPerson);
		$criteria->compare('hotelRestaurant',$this->hotelRestaurant,true);
		$criteria->compare('meal',$this->meal,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
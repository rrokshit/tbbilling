<?php

/**
 * This is the model class for table "voucher_room".
 *
 * The followings are the available columns in table 'voucher_room':
 * @property integer $roomID
 * @property integer $voucherId
 * @property string $roomNumber
 * @property string $guestName
 * @property string $roomType
 * @property string $numberOfGuest
 * @property string $roomCategory
 *
 * The followings are the available model relations:
 * @property Voucher $voucher
 */
class VoucherRoom extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return VoucherRoom the static model class
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
		return 'voucher_room';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('voucherId', 'required'),
			array('voucherId', 'numerical', 'integerOnly'=>true),
			array('roomNumber, roomType, roomCategory', 'length', 'max'=>50),
			array('guestName', 'length', 'max'=>80),
			array('numberOfGuest', 'length', 'max'=>20),
                        array('roomCategory', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('roomID, voucherId, roomNumber, guestName, roomType, numberOfGuest, roomCategory', 'safe', 'on'=>'search'),
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
			'voucher' => array(self::BELONGS_TO, 'Voucher', 'voucherId'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'roomID' => 'Room',
			'voucherId' => 'Voucher',
			'roomNumber' => 'Room Number',
			'guestName' => 'Guest Name',
			'roomType' => 'Room Type',
			'numberOfGuest' => 'Number Of Guest',
			'roomCategory' => 'Room Category',
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

		$criteria->compare('roomID',$this->roomID);
		$criteria->compare('voucherId',$this->voucherId);
		$criteria->compare('roomNumber',$this->roomNumber,true);
		$criteria->compare('guestName',$this->guestName,true);
		$criteria->compare('roomType',$this->roomType,true);
		$criteria->compare('numberOfGuest',$this->numberOfGuest,true);
		$criteria->compare('roomCategory',$this->roomCategory,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
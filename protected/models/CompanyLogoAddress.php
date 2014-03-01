<?php

/**
 * This is the model class for table "company_logo_address".
 *
 * The followings are the available columns in table 'company_logo_address':
 * @property integer $id
 * @property string $logo
 * @property string $company_name
 * @property string $company_address
 * @property string $optional
 * @property integer $company_id
 */
class CompanyLogoAddress extends CActiveRecord
{
	public $logo;
	/**
	 * Returns the static model of the specified AR class.
	 * @return CompanyLogoAddress the static model class
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
		return 'company_logo_address';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('logo, company_name, company_address, company_id', 'required'),
			array('company_id', 'numerical', 'integerOnly'=>true),
			array('logo', 'length', 'max'=>50),
			array('company_name', 'length', 'max'=>100),
			array('company_address, optional', 'length', 'max'=>250),
			array('logo', 'file', 'types'=>'jpg, gif, png'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, logo, company_name, unit_id, company_address, optional, company_id', 'safe', 'on'=>'search'),
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
			'id' => 'ID',
			'logo' => 'Logo',
			'company_name' => 'Company Name',
			'company_address' => 'Company Address',
			'optional' => 'Optional',
			'company_id' => 'Company',
			'unit_id' => 'Unit Name',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('logo',$this->logo,true);
		$criteria->compare('company_name',$this->company_name,true);
		$criteria->compare('company_address',$this->company_address,true);
		$criteria->compare('optional',$this->optional,true);
		$criteria->compare('deleted','0');
		$criteria->compare('company_id',Yii::app()->user->companyId);
		$criteria->compare('unit_id',Yii::app()->user->unitName);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public function search_r()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('logo',$this->logo,true);
		$criteria->compare('company_name',$this->company_name,true);
		$criteria->compare('company_address',$this->company_address,true);
		$criteria->compare('optional',$this->optional,true);
		$criteria->compare('company_id',$this->company_id);
		$criteria->compare('deleted',$this->deleted);
		$criteria->compare('unit_id',Yii::app()->user->unitName);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}
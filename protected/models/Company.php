<?php

/**
 * This is the model class for table "company".
 *
 * The followings are the available columns in table 'company':
 * @property integer $id
 * @property string $name
 * @property string $email
 * @property string $phone
 * @property string $fax
 * @property string $address
 * @property string $website
 * @property string $img
  * @property string $reg_number
 * @property string $mobile
 */
class Company extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return Company the static model class
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
		return 'company';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name', 'required'),
			array('name, img', 'length', 'max'=>100),
			array('email, website', 'length', 'max'=>50),
			array('phone,fax', 'length', 'max'=>20),
			array('reg_number,mobile', 'length', 'max'=>30),
			array('address', 'length', 'max'=>250),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, name, email, phone, fax, address, website, img, reg_number, mobile', 'safe', 'on'=>'search'),
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
			'name' => 'Name',
			'email' => 'Email',
			'phone' => 'Phone',
			'address' => 'Address',
			'website' => 'Website',
			'img' => 'Img',
			'reg_number'=>'Reg. No.',
			'mobile'=>'Mobile',
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
		$criteria->compare('name',$this->name,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('phone',$this->phone,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('website',$this->website,true);
		$criteria->compare('img',$this->img,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	
	
	public function generateRandomName($intType)
{
    $strFileName = '';
    switch ($intType) {
        case 0: //map cover image
        $strFileName.='mapCover_';
        $strEnd = '.jpg';
        break;

        case 1: //map description swf
        $strFileName.='mapMovie_';
        $strEnd = '.swf';
        break;

        case 2: //map description image
        $strFileName.='mapImage_';
        $strEnd = '.jpg';
        break;

        case 3: //map version file
        $strFileName.='mapFile_';
        $strEnd = '.rar';
        break;

        default://default name
        $strFileName.='mapUpload_';
        $strEnd = '.unknown';
        break;
    }

    $strFileName.=time().'_';

    $strFileName.=$this->randStr();

    $strFileName.=$strEnd;

    return $strFileName;
}

public function randStr($len=6,$format='ALL_WORD') {
     switch($format) {
     case 'ALL_WORD':
     $chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'; break;
     case 'ALL':
     $chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-@#~'; break;
     case 'CHAR':
     $chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-@#~'; break;
     case 'NUMBER':
     $chars='0123456789'; break;
     default :
     $chars='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-@#~';
     break;
     }

     mt_srand((double)microtime()*1000000*getmypid());
     $password="";
     while(strlen($password)<$len)
        $password.=substr($chars,(mt_rand()%strlen($chars)),1);
     return $password;
 }
}
<?php

/**
 * This is the model class for table "user_info".
 *
 * The followings are the available columns in table 'user_info':
 * @property integer $id
 * @property string $fullname
 * @property string $company
 * @property string $department
 * @property string $phone
 * @property string $email
 * @property string $address
 * @property string $user_name
 * @property string $password
 * @property string $status
 * @property string $entry_date
 * @property string $entry_by
 * @property string $update_date
 * @property string $update_by
 * @property integer $type_id
 * @property integer $deleted
 * @property integer $company_id
 */
class UserInfo extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return UserInfo the static model class
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
		return 'user_info';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('fullname, user_name, password', 'required'),
			array('type_id, ', 'numerical', 'integerOnly'=>true),
			array('fullname, entry_by, update_by, avatar,password', 'length', 'max'=>100),
			array('email', 'length', 'max'=>50),
			array('phone, user_name, ', 'length', 'max'=>20),
			array('address', 'length', 'max'=>300),
			array('status', 'length', 'max'=>10),
			array('update_date,menu_permission,status, entry_by, type_id,avatar', 'safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, fullname, avatar, phone, email, address, user_name, password, status, entry_date, entry_by, update_date, update_by, type_id, ', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	 
	public function showImage($img)
	{
		return 	"<img src='".Yii::app()->request->baseUrl."/user_avatar/".$img."' width='100px'/>";
	}
	 
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
			'fullname' => 'Fullname',


			'phone' => 'Phone',
			'email' => 'Email',
			'address' => 'Address',
			'user_name' => 'User Name',
			'password' => 'Password',
			'status' => 'Status',
			'entry_date' => 'Entry Date',
			'entry_by' => 'Entry By',
			'update_date' => 'Update Date',
			'update_by' => 'Update By',
			'type_id' => 'Type',
			'deleted' => 'Deleted',
			'avatar'=>'Profile Photo',
                    
                        'branch_id'=>'Branch',
			
			'menu_permission' => 'Menu Permission',
			
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
		$criteria->compare('fullname',$this->fullname,true);
		//$criteria->compare('company',$this->company,true);
		//$criteria->compare('department',$this->department,true);
		$criteria->compare('phone',$this->phone,true);
		$criteria->compare('email',$this->email,true);
		$criteria->compare('address',$this->address,true);
		$criteria->compare('user_name',$this->user_name,true);
		$criteria->compare('password',$this->password,true);
		$criteria->compare('status',$this->status,true);
		$criteria->compare('entry_date',$this->entry_date,true);
		$criteria->compare('entry_by',$this->entry_by,true);
		$criteria->compare('update_date',$this->update_date,true);
		$criteria->compare('update_by',$this->update_by,true);
		//$criteria->compare('factory_id',$this->factory_id,true);
		$criteria->addNotInCondition('type_id',array(type_id=>'0'));
		//$criteria->compare('deleted',$this->deleted);
		//$criteria->compare('company_id',$this->company_id);

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
<?php

/**
 * This is the model class for table "user_log".
 *
 * The followings are the available columns in table 'user_log':
 * @property integer $id
 * @property string $type
 * @property integer $user_id
 * @property string $description
 * @property string $log_time
 */
class UserLog extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return UserLog the static model class
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
		return 'user_log';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('type, user_id, description', 'required'),
			array('user_id', 'numerical', 'integerOnly'=>true),
			array('type,log_time,table_name,table_id', 'length', 'max'=>20),
			array('description', 'length', 'max'=>100),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, type, user_id, description, log_time', 'safe', 'on'=>'search'),
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
			'type' => 'Type',
			'user_id' => 'User',
			'description' => 'Description',
			'log_time' => 'Log Time',
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
		$criteria->compare('type',$this->type,true);
		$criteria->compare('user_id',$this->user_id);
		$criteria->compare('description',$this->description,true);
		$criteria->compare('log_time',$this->log_time,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public function userLogs($type, $userId, $description, $tblName, $tblId)
	{
		$model = new UserLog;
		$model->type = $type;
		$model->user_id = $userId;
		$model->description = $description;
		$model->table_name = $tblName;
		$model->table_id = $tblId;
		$model->save();
		
		//UserLog::model()->insert(array('model'=>$type,'user_id'=>$userId,'description'=>$description));
	}
}
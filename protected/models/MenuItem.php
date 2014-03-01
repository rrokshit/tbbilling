<?php

/**
 * This is the model class for table "menu_item".
 *
 * The followings are the available columns in table 'menu_item':
 * @property integer $id
 * @property string $name
 * @property integer $parent
 * @property string $icon
 */
class MenuItem extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @return MenuItem the static model class
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
		return 'menu_item';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('name, link', 'required'),
			array('parent', 'numerical', 'integerOnly'=>true),
			array('name', 'length', 'max'=>50),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, name, parent, link, icon', 'safe', 'on'=>'search'),
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
			'parent' => 'Parent',
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
		$criteria->compare('parent',$this->parent);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	public function multi_level($current_cat_id, $count)
	{
			static $option_results;
			
			if(!isset($current_cat_id))
			{
				$current_cat_id=0;	
			}
			$count = $count+1;
			//$companyId=Yii::app()->user->companyId;
			$get_option=$this->model()->findAll(array('select'=>'id, name', 'condition'=>'parent = '.$current_cat_id, 'order'=>'name asc',));
			
			
			$num_option = $this->count('parent = '.$current_cat_id.'');
			if($num_option > 0)
			{
				foreach ($get_option as $id):
					if ($current_cat_id!=0)
					{
						$indent_flag =  '';
						for ($x=2; $x<=$count; $x++) 
						{
							$indent_flag .=  "--- ";
						}
					}
					$id->name = $indent_flag.$id->name;
					$option_results[$id->id] = $id->name;
					
					$this->multi_level($id->id, $count );
				endforeach;
			}
			return $option_results;
	}
}
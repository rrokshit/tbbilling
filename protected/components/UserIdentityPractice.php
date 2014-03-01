<?php
class UserIdentity extends CUserIdentity{
 
    private $id;
    private $model;
 
    public function getId()
    {
        return $this->id;
    }
 
    public function getModel()
    {
        return $this->model;
    }
 
 
    public function authenticate()
    {
        $user= UserInfo::model()->findAll("user_name='$this->username' and password='$this->password' and status='1' and deleted='0'");
 
        if($user === null)
        {
            $this->errorCode= CBaseUserIdentity::ERROR_UNKNOWN_IDENTITY;
        }
        elseif($user->password !== $this->password)
        {
            $this->errorCode= CBaseUserIdentity::ERROR_PASSWORD_INVALID;
        }
        else
        {
            $this->model= $user;
            $this->id= $user->id;
            $this->company= $user->company_id;
            $this->errorCode= self::ERROR_NONE;
        }
        return !$this->errorCode;
    }
}

class WebUser extends CWebUser{
 
    public function getModel()
    {
        return Yii::app()->getSession()->get('model');
    }
 
    public function login($identity, $duration)
    {
        parent::login($identity, $duration);
        Yii::app()->getSession()->add('model', $identity->getModel());
    }
 
    public function logout($destroySession= true)
    {
        // I always remove the session variable model.
        Yii::app()->getSession()->remove('model');
    }
 
}
?>
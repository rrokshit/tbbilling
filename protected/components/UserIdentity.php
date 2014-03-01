<?php

/**
 * UserIdentity represents the data needed to identity a user.
 * It contains the authentication method that checks if the provided
 * data can identity the user.
 */
class UserIdentity extends CUserIdentity
{
	/**
	 * Authenticates a user.
	 * The example implementation makes sure if the username and password
	 * are both 'demo'.
	 * In practical applications, this should be changed to authenticate
	 * against some persistent user identity storage (e.g. database).
	 * @return boolean whether authentication succeeds.
	 */
	private $_id;
	
	public function authenticate()
	{		
		$user=UserInfo::model()->findByAttributes(array('user_name'=>$this->username,'status'=>'ACTIVE'));
		
		if($user===null)
            $this->errorCode=self::ERROR_USERNAME_INVALID;
        else if($user->password!==$this->password)
            $this->errorCode=self::ERROR_PASSWORD_INVALID;
        else
        {
            $this->_id = $user->id;
			$this->setState('userId', $user->id);
			$this->setState('userName', $user->user_name);
			$this->setState('userType', $user->type_id);
			
            //$this->setState('companyId', $user->company_id);
			//$this->setState('unitName', $user->unitName);
			//$this->setState('typeId', $user->type_id);
			//$this->setState('factoryId', $user->factory_id);
            $this->errorCode=self::ERROR_NONE;
        }
        return !$this->errorCode;

	}
	
	public function getId()
    {
        return $this->_id;
    }
}
?>
<?php
class EWebUser extends CWebUser{
    protected $_model;
    function isAdmin(){
        $user = $this->loadUser();
        if ($user)
        	if(isset($user->type_id))
			{
				if($user->type_id==LevelLookUp::SUPERADMIN)
					return 'SuperAdmin';
				if($user->type_id==LevelLookUp::ADMIN)
					return 'Admin';
				if($user->type_id==LevelLookUp::SALES_ORDER_GROUP)
					return 'SaleOrderGroup';
				if($user->type_id==LevelLookUp::DELIVERY_ORDER_GROUP)
					return 'DeliveryOrderGroup';
				if($user->type_id==LevelLookUp::DELIVERY_CHALLAN_GROUP)
					return 'DeliveryChallanGroup';
				if($user->type_id==LevelLookUp::BILL_GROUP)
					return 'BillGroup';
				if($user->type_id==LevelLookUp::ENTRY_GROUP)
					return 'EntryGroup';
				return false;
			}
    }
    // Load user model.
    protected function loadUser()
    {
        if ( $this->_model === null ) {
                $this->_model = UserInfo::model()->findByPk( $this->id );
        }
        return $this->_model;
    }
}
?>
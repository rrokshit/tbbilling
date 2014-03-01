<?php
class LevelLookUp
	{
	  const ENTRY_GROUP = 6;
      const BILL_GROUP = 5;
	  const DELIVERY_CHALLAN_GROUP = 4;
	  const DELIVERY_ORDER_GROUP = 3;
	  const SALES_ORDER_GROUP = 2;
	  const ADMIN = 1;
      const SUPERADMIN  = 0;
      // For CGridView, CListView Purposes
      public static function getLabel( $level )
	  {
		if($level == self::ENTRY_GROUP)
			return 'EntryGroup';
		if($level == self::BILL_GROUP)
			return 'BillGroup';
		if($level == self::DELIVERY_CHALLAN_GROUP)
			return 'DeliveryChallanGroup';
		if($level == self::DELIVERY_ORDER_GROUP)
			return 'DeliveryOrderGroup';
		if($level == self::SALES_ORDER_GROUP)
			return 'SaleOrderGroup';
		if($level == self::ADMIN)
			return 'Administrator';
		if($level == self::SUPERADMIN)
			return 'SuperAdministrator';
		return false;
      }
      // for dropdown lists purposes
      public static function getLevelList()
	  {
          return array(
				 self::ENTRY_GROUP=>'EntryGroup',
                 self::BILL_GROUP=>'BillGroup',
				 self::DELIVERY_CHALLAN_GROUP=>'DeliveryChallanGroup',
				 self::DELIVERY_ORDER_GROUP=>'DeliveryOrderGroup',
				 self::SALES_ORDER_GROUP=>'SaleOrderGroup',
                 self::ADMIN=>'Administrator',
		  		 self::SUPERADMIN=>'SuperAdministrator');
	  }
}
?>
<?php

class CommonController extends Controller
{
	
	
	
	
	public function myMaxID($tableName, $pkColumnName){
   			$command = Yii::app()->db->createCommand();
			$chkMax = $command->select("max($pkColumnName) as maxnum")->from("$tableName")->queryAll();
			return $chkMax[0][maxnum]+1; 
	}
	
	public function mails($to,$subject,$from,$page)
	{
		//$this->layout = '';
	
		$message = new YiiMailMessage;
		$message->view = $page;
		$message->setBody('','text/html');
		$message->subject = $subject;
		$message->addTo($to);
		$message->from = $from;
					
		
		if(Yii::app()->mail->send($message))
			return "Email Sent successfull.";
		else
			return "Failed to sent.";
	 }
	
	
	public function actionIndex()
	{
		$this->render('index');
	}
	
	//start executive select box
	public function ExecutiveSelectBox($id,$name,$selectedValue)
	{
		//$selParty = PartySelect::model()->findAll("company_id='".Yii::app()->user->companyId."' and unitName='".Yii::app()->user->unitName."'");
		if(Yii::app()->user->companyId !='' and Yii::app()->user->unitName !='0'){
			$selParty = ExecutiveInfo::model()->findAll("deleted='0' and company_id='".Yii::app()->user->companyId."' and unitName='".Yii::app()->user->unitName."'");
		}else{
			$selParty = PartyCategory::model()->findAll("company_id='".Yii::app()->user->companyId."' and deleted='0'");
		}
		echo "<select id='".$id."' name='".$name."'>";
			echo "<option value='All'>All Executive</option>";
		foreach($selParty as $partyInfo){
			?>
            <option value="<?php echo $partyInfo->id;?>" 
                <?php if($selectedValue > 0){if($selectedValue==$partyInfo->id){echo "selected='selected'";}} ?>> 
                <?php echo $partyInfo->name;?> 
            </option>
			<?php	
		}
		echo "</select>";
	}
	//end executive select box
	
	
	//party category select box
	public function PartyCategorySelectBox($id,$name,$selectedValue)
	{
		//$selParty = PartySelect::model()->findAll("company_id='".Yii::app()->user->companyId."' and unitName='".Yii::app()->user->unitName."'");
		if(Yii::app()->user->companyId !='' and Yii::app()->user->unitName !='0'){
			$selParty = PartyCategory::model()->findAll("deleted='0' and company_id='".Yii::app()->user->companyId."' and unitName='".Yii::app()->user->unitName."'");
		}else{
			$selParty = PartyCategory::model()->findAll("company_id='".Yii::app()->user->companyId."' and deleted='0'");
		}
		echo "<select id='".$id."' name='".$name."'>";
			echo "<option value='All'>All Category</option>";
		foreach($selParty as $partyInfo){
			?>
            <option value="<?php echo $partyInfo->id;?>" 
                <?php if($selectedValue > 0){if($selectedValue==$partyInfo->id){echo "selected='selected'";}} ?>> 
                <?php echo $partyInfo->party_cat_name;?> 
            </option>
			<?php	
		}
		echo "</select>";
	}
	//end party category select box
	
	//partyInfo select box
	public function PartySelectBox($id,$name,$selectedValue)
	{
		//$selParty = PartySelect::model()->findAll("company_id='".Yii::app()->user->companyId."' and unitName='".Yii::app()->user->unitName."'");
		if(Yii::app()->user->companyId !='' and Yii::app()->user->unitName !='0'){
			$selParty = PartyInfo::model()->findAll("company_id='".Yii::app()->user->companyId."' and unitName='".Yii::app()->user->unitName."'");
		}else{
			$selParty = PartyInfo::model()->findAll("company_id='".Yii::app()->user->companyId."'");
		}
		echo "<select id='".$id."' name='".$name."'>";
			echo "<option value=''>Select Party</option>";
		foreach($selParty as $partyInfo){
			?>
            <option value="<?php echo $partyInfo->id;?>" 
                <?php if($selectedValue > 0){if($selectedValue==$partyInfo->id){echo "selected='selected'";}} ?>> 
                <?php echo " ".$partyInfo->code." ".$partyInfo->company_name;?> 
            </option>
			<?php	
		}
		echo "</select>";
	}
	//end party select box
	
	//factory select box
	public function FactorySelectBox($id,$name,$selectedValue)
	{
		//$selParty = PartySelect::model()->findAll("company_id='".Yii::app()->user->companyId."' and unitName='".Yii::app()->user->unitName."'");
		$selParty = FactoryInfo::model()->findAll("company_id='".Yii::app()->user->companyId."'");
		echo "<select id='".$id."' name='".$name."'>";
			if(sizeof($selParty) > 1)
				echo "<option value='All'>All Factory</option>";
		foreach($selParty as $partyInfo){
			?>
            <option value="<?php echo $partyInfo->id;?>" 
                <?php if($selectedValue > 0){if($selectedValue==$partyInfo->id){echo "selected='selected'";}} ?>> 
                <?php echo $partyInfo->factory_name;?> 
            </option>
			<?php	
		}
		echo "</select>";
	}
	//end factory select box
	
	//unit select box
	public function UnitSelectBox($id,$name,$selectedValue)
	{
		if(Yii::app()->user->unitName > 0)
			$selParty = CompanyUnit::model()->findAll("company_id='".Yii::app()->user->companyId."' and deleted='0' and id='".Yii::app()->user->unitName."'");
		else
			$selParty = CompanyUnit::model()->findAll("company_id='".Yii::app()->user->companyId."' and deleted='0'");
			
		echo "<select id='".$id."' name='".$name."'>";
			if(Yii::app()->user->unitName == 0)
				echo "<option value='All'>All Unit</option>";
		foreach($selParty as $partyInfo){
			?>
            <option value="<?php echo $partyInfo->id;?>" 
                <?php if($selectedValue > 0){if($selectedValue==$partyInfo->id){echo "selected='selected'";}} ?>> 
                <?php echo $partyInfo->name;?> 
            </option>
			<?php	
		}
		echo "</select>";
	}
	//end factory select box
	
	
	public function SalesQtyOn($fromDate,$toDate,$partyId,$companyId,$unitName)
	{
		$sumTQty = 0;

		for($a=0; $a < sizeof($unitName); $a++){
			
			//find bill
			$tBill = BillInfo::model()->findAll("bill_date between '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName[$a]."'");
			
			for($k=0; $k<sizeof($tBill); $k++){
				$command = Yii::app()->db->createCommand();
				$query = $command->select("(delivery_quantity+extra_quantity) as cQty")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1'")->queryAll();
				for($m=0; $m<sizeof($query); $m++)
				{
					$sumTQty += $query[$m]['cQty'];
				}
			}//end find bill
			
			//find adjust bill
			$aBill = BillInfo::model()->findAll("bill_date between '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName[$a]."'");
			if(sizeof($aBill)>0){
				for($l=0; $l<sizeof($aBill); $l++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("t_qty")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
					for($m=0; $m<sizeof($query); $m++)
					{
						$sumTQty += $query[$m]['t_qty'];
					}
								
				}
			}
			//end adjust bill
			
		}
		//$calOpeningBalance = ($sumTBill + $opening_balance) - $Vpayment;	
		return $sumTQty;
	}
	
	
	public function SalesQty($fromDate,$partyId,$companyId,$unitName)
	{
		$sumTQty = 0;

		for($a=0; $a < sizeof($unitName); $a++){
			
			//find bill
			$tBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName[$a]."'");
			
			for($k=0; $k<sizeof($tBill); $k++){
				$command = Yii::app()->db->createCommand();
				$query = $command->select("(delivery_quantity+extra_quantity) as cQty, product_Info_id, sale_order_product_id")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1'")->queryAll();
				for($m=0; $m<sizeof($query); $m++)
				{
					$totalQ = $query[$m]['cQty'];
					
					$selCol = ProductList::model()->findByPk($query[$m]['product_Info_id']);
					$proUnit = SaleOrderProduct::model()->findByPk($query[$m]['sale_order_product_id'])->productUnit;
					
					if($proUnit == $selCol->productUnit1 && $selCol->productMT1 != 0)
						$mtQ =  $totalQ/$selCol->productMT1;
					else if($proUnit == $selCol->productUnit2 && $selCol->productMT2 != 0)
						$mtQ = $totalQ/$selCol->productMT2;
					else if($proUnit == $selCol->productUnit3 && $selCol->productMT3 != 0)
						$mtQ = $totalQ/$selCol->productMT3; 
					else if($proUnit == $selCol->productUnit4 && $selCol->productMT4 != 0)
						$mtQ = $totalQ/$selCol->productMT4;
					else if($proUnit == $selCol->productUnit5 && $selCol->productMT5 != 0)
						$mtQ = $totalQ/$selCol->productMT5;
					else if($proUnit == $selCol->productUnit6 && $selCol->productMT6 != 0)
						$mtQ = $totalQ/$selCol->productMT6;
					else if($proUnit == $selCol->productUnit7 && $selCol->productMT7 != 0)
						$mtQ = $totalQ/$selCol->productMT7;
					
					$sumTQty += $mtQ;
				}
			}//end find bill
			
			//find adjust bill
			$aBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName[$a]."'");
			if(sizeof($aBill)>0){
				for($l=0; $l<sizeof($aBill); $l++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("t_qty")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
					for($m=0; $m<sizeof($query); $m++)
					{
						$sumTQty += $query[$m]['t_qty'];
					}
								
				}
			}
			//end adjust bill
			
		}
		//$calOpeningBalance = ($sumTBill + $opening_balance) - $Vpayment;	
		return $sumTQty;
	}
	
	
	//Gegerate Party Opening Balance For Company Admin
	public function PartyOpeningBalanceCA($fromDate,$partyId,$companyId,$unitName,$factory_id)
	{
		if($factory_id=='All')
			$factory_id2='';
		else
			$factory_id2=" and factory_id='".$factory_id."'";
		
		$opening_balance = 0;
		$sumTBill = 0;
		$Vpayment=0;
		if($unitName > 0)
		{
			//find op deposited
				$opbalance = OpeningBalance::model()->findAll("party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."'".$factory_id2);
				foreach($opbalance as $opb)	{	
					$opening_balance += $opb->opening_balance;
				}//end find op deposited
				
				//find bill
				$tBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName."'".$factory_id2);
				
				for($k=0; $k<sizeof($tBill); $k++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1'")->queryAll();
					for($m=0; $m<sizeof($query); $m++)
					{
						$sumTBill += $query[$m]['cBill'];
					}
				}//end find bill
				
				//find adjust bill
				$aBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName."'".$factory_id2);
				if(sizeof($aBill)>0){
					for($l=0; $l<sizeof($aBill); $l++){
						$command = Yii::app()->db->createCommand();
						$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
						for($m=0; $m<sizeof($query); $m++)
						{
							$sumTBill += $query[$m]['aBill'];
						}
									
					}
				}
				//end adjust bill
				
				//find pay party
				$payParty = VoucherPayment::model()->findAll("party_id='".$partyId."' and payment_date < '".$fromDate."'  and company_id='".$companyId."' and unitName='".$unitName."'".$factory_id2);
				if(sizeof($payParty)>0){
					
					foreach($payParty as $payInfo){
						$Vpayment +=  $payInfo->amount;
					}
				}
				//end pay party
				$calOpeningBalance = ($sumTBill + $opening_balance) - $Vpayment;
		}
		else
		{
			$unitName2 = CompanyUnit::model()->findAll("company_id='".$companyId."'");
			foreach($unitName2 as $unitName){
				//find op deposited
				$opbalance = OpeningBalance::model()->findAll("party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName->id."'".$factory_id2);
				foreach($opbalance as $opb)	{	
					$opening_balance += $opb->opening_balance;
				}//end find op deposited
				
				//find bill
				$tBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName->id."'");
				
				for($k=0; $k<sizeof($tBill); $k++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1'")->queryAll();
					for($m=0; $m<sizeof($query); $m++)
					{
						$sumTBill += $query[$m]['cBill'];
					}
				}//end find bill
				
				//find adjust bill
				$aBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName->id."'");
				if(sizeof($aBill)>0){
					for($l=0; $l<sizeof($aBill); $l++){
						$command = Yii::app()->db->createCommand();
						$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
						for($m=0; $m<sizeof($query); $m++)
						{
							$sumTBill += $query[$m]['aBill'];
						}
									
					}
				}
				//end adjust bill
				
				//find pay party
				$payParty = VoucherPayment::model()->findAll("party_id='".$partyId."' and payment_date < '".$fromDate."'  and company_id='".$companyId."' and unitName='".$unitName->id."'");
				if(sizeof($payParty)>0){
					
					foreach($payParty as $payInfo){
						$Vpayment +=  $payInfo->amount;
					}
				}
				//end pay party
				
			}
			$calOpeningBalance = ($sumTBill + $opening_balance) - $Vpayment;
		}
		
		return $calOpeningBalance;
		//return $factory_id2;
	}
	
	
	//Generate party bill ------- ---------------- ------------------ ------------------- ---------------- -------------
	public function PartyBillCA($fromDate,$toDate,$partyId,$companyId,$unitName,$adjustment,$factory_id)
	{
		if($factory_id=='All')
			$factory_id2='';
		else
			$factory_id2=" and factory_id='".$factory_id."'";
		
		$sumTBill =0;
		
		if($unitName != 'All')
		{
			
			
				//find tbill
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."' and parent_id='' and adjust_details!='1'".$factory_id2);
				
				for($k=0; $k<sizeof($tBill); $k++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1' and unitName='".$unitName."'".$factory_id2)->queryAll();
					for($m=0; $m<sizeof($query); $m++){
						$sumTBill += $query[$m]['cBill'];
					}
				}
				///end find tbill
				
				//if bill calculation with adjustment
				if($adjustment=='Y')
				{
					//find adjust bill
					$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName."' and adjust_details!='1'".$factory_id2);
					if(sizeof($aBill)>0){
						for($l=0; $l<sizeof($aBill); $l++){
							$command = Yii::app()->db->createCommand();
							$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
							for($m=0; $m<sizeof($query); $m++){
								$sumTBill += $query[$m]['aBill'];
							}			
						}
					}
					//end adjust bill
				}

			
		}else{
			
			//find bill
			$unitName2 = CompanyUnit::model()->findAll("company_id='".$companyId."'");
			foreach($unitName2 as $unitName){
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName->id."' and parent_id='' and adjust_details!='1'");
			
				
				//$sumTBill =0;
				for($k=0; $k<sizeof($tBill); $k++){
					
						$command = Yii::app()->db->createCommand();
						$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1' and unitName='".$unitName->id."'".$factory_id2)->queryAll();
						for($m=0; $m<sizeof($query); $m++){
							$sumTBill += $query[$m]['cBill'];
						}
		
				}
				//end find bill
			
		//return "select *from bill_info where bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."' and parent_id=''";
		
		
				//if bill calculation with adjustment
				if($adjustment=='Y')
				{
					//find adjust bill
						$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName->id."' and adjust_details!='1'");
					
					
					if(sizeof($aBill)>0){
						for($l=0; $l<sizeof($aBill); $l++){
							$command = Yii::app()->db->createCommand();
							$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
							for($m=0; $m<sizeof($query); $m++){
								$sumTBill += $query[$m]['aBill'];
							}			
						}
					}
					//end find adjust bill
				}
			
			//$sumTBill = 800;
			}
		}
		//final opening balance
		return $sumTBill;	
	}
	
	
	//start party paymentca
	public function PartyPaymentCA($fromDate,$toDate,$partyId,$companyId,$unitName,$adjustment,$factory_id)
	{
		if($factory_id=='All')
			$factory_id2='';
		else
			$factory_id2=" and factory_id='".$factory_id."'";
		
		$fbalance = 0;
		if($unitName > 0){
			
			
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName."'".$factory_id2)
								   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName."' and voucher_no != '0'".$factory_id2)
								   ->queryAll();
				}
				
				if(sizeof($Payment)>0){
					for($l=0; $l<sizeof($Payment); $l++){
						if($Payment[$l][voucher_no] != '0'){
							$fbalance += $Payment[$l][amount];
						}else{
							if($Payment[$l][amount] >= '0'){
								$fbalance += $Payment[$l][amount];
							}else
							{
								$fbalance -= $Payment[$l][amount];
							}
						}
					}
				}
			

		}else{
			
			$unitName2 = CompanyUnit::model()->findAll("company_id='".$companyId."'");
			
			foreach($unitName2 as $unitName)
			{
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName->id."'".$factory_id2)
								   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName->id."' and voucher_no != '0'".$factory_id2)
								   ->queryAll();
				}
			
			
			
				//$fbalance = 0;
				if(sizeof($Payment)>0){
					for($l=0; $l<sizeof($Payment); $l++){
						if($Payment[$l][voucher_no] != '0'){
							$fbalance += $Payment[$l][amount];
						}else{
							if($Payment[$l][amount] >= '0'){
								$fbalance += $Payment[$l][amount];
							}else
							{
								$fbalance += $Payment[$l][amount];
							}
						}
					}
				}	
			}		
		}
		
		return $fbalance;
	}
	//end party payment ca
	
	
	
	//Generate party adjustment ----------- ---------------------- -----------------
	public function PartyAdjustmentCA($fromDate,$toDate,$partyId,$companyId,$unitName,$factory_id)
	{
		if($factory_id=='All')
			$factory_id2='';
		else
			$factory_id2=" and factory_id='".$factory_id."'";
			
		$sumTBill=0;
		
		if($unitName > 0)
		{
			
				//find adjust bill
				$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName."' and adjust_details!='1'".$factory_id2);
				
				if(sizeof($aBill)>0){
					for($l=0; $l<sizeof($aBill); $l++){
						$command = Yii::app()->db->createCommand();
						$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
						for($m=0; $m<sizeof($query); $m++){
							$sumTBill += $query[$m]['aBill'];
						}			
					}
				}
				//end adjust bill
			
			
			
				
				$command = Yii::app()->db->createCommand();
				$Payment = $command->select("*")
							   ->from("voucher_payment")
							   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName."' and voucher_no='0'".$factory_id2)
							   ->queryAll();
				
				if(sizeof($Payment)>0){
					for($l=0; $l<sizeof($Payment); $l++){
						
						$sumTBill += $Payment[$l][amount];
						/*if($Payment[$l][amount] >= '0'){
							$sumTBill += $Payment[$l][amount];
						}else
						{
							$sumTBill -= $Payment[$l][amount];
						}*/
	
					}
				}
			
		}
		else
		{
			$unitName2 = CompanyUnit::model()->findAll("company_id='".$companyId."'");
			
			foreach($unitName2 as $unitName)
			{
				//find adjust bill
				$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName->id."' and adjust_details!='1'".$factory_id2);
				
				if(sizeof($aBill)>0){
					for($l=0; $l<sizeof($aBill); $l++){
						$command = Yii::app()->db->createCommand();
						$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
						for($m=0; $m<sizeof($query); $m++){
							$sumTBill += $query[$m]['aBill'];
						}			
					}
				}
				//end adjust bill
			}
			
			foreach($unitName2 as $unitName)
			{
				
				$command = Yii::app()->db->createCommand();
				$Payment = $command->select("*")
							   ->from("voucher_payment")
							   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName->id."' and voucher_no='0'".$factory_id2)
							   ->queryAll();
				
				if(sizeof($Payment)>0){
					for($l=0; $l<sizeof($Payment); $l++){
						
						$sumTBill += $Payment[$l][amount];
						/*if($Payment[$l][amount] >= '0'){
							$sumTBill += $Payment[$l][amount];
						}else
						{
							$sumTBill -= $Payment[$l][amount];
						}*/
	
					}
				}
			}
			
		}
		
		
		return $sumTBill;
	}
	
	
	//Gegerate Party Opening Balance with factory
	public function PartyOpeningBalanceFactory($fromDate,$partyId,$companyId,$unitName,$factory_id)
	{		
		if($unitName > 0){
			$opbalance = OpeningBalance::model()->findAll("party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."' and factory_id='".$factory_id."'");
			$opening_balance = 0;
			foreach($opbalance as $opb){
				$opening_balance += $opb->opening_balance;
			}
		}
		else{
			$opbalance = OpeningBalance::model()->findAll("party_id='".$partyId."' and company_id='".$companyId."' and factory_id='".$factory_id."'");
			$opening_balance = 0;
			foreach($opbalance as $opb){
				$opening_balance += $opb->opening_balance;
			}
		}
		
		if($unitName > 0)
			$tBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName."' and factory_id='".$factory_id."'");
		else
			$tBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and factory_id='".$factory_id."'");
		//return "select *from bill_info where bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName."'";
		$sumTBill =0;
		for($k=0; $k<sizeof($tBill); $k++){
			$command = Yii::app()->db->createCommand();
			$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1' and factory_id='".$factory_id."'")->queryAll();
			for($m=0; $m<sizeof($query); $m++)
			{
				$sumTBill += $query[$m]['cBill'];
			}
		}
		
		//return $sumTBill;
		
		if($unitName > 0)
			$aBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName."' and factory_id='".$factory_id."'");
		else
			$aBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and factory_id='".$factory_id."'");
			
		if(sizeof($aBill)>0){
			for($l=0; $l<sizeof($aBill); $l++){
				$command = Yii::app()->db->createCommand();
				$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."' and factory_id='".$factory_id."'")->queryAll();
				for($m=0; $m<sizeof($query); $m++)
				{
					$sumTBill += $query[$m]['aBill'];
				}
							
			}
		}
		
		
		if($unitName > 0)
			$payParty = VoucherPayment::model()->findAll("party_id='".$partyId."' and payment_date < '".$fromDate."'  and company_id='".$companyId."' and unitName='".$unitName."' and factory_id='".$factory_id."'");
		else
			$payParty = VoucherPayment::model()->findAll("party_id='".$partyId."' and payment_date < '".$fromDate."'  and company_id='".$companyId."' and factory_id='".$factory_id."'");
			
		if(sizeof($payParty)>0){
			$Vpayment=0;
			foreach($payParty as $payInfo){
				$Vpayment +=  $payInfo->amount;
			}
		}

		//return $sumTBill;
		
		//final opening balance
		$calOpeningBalance = ($sumTBill + $opening_balance) - $Vpayment;	
		return $calOpeningBalance;
	}
	
	
	//Gegerate Party Opening Balance
	public function PartyOpeningBalance($fromDate,$partyId,$companyId,$unitName)
	{		
		if($unitName > 0){
			$opbalance = OpeningBalance::model()->findAll("party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."'");
			$opening_balance = 0;
			foreach($opbalance as $opb){
				$opening_balance += $opb->opening_balance;
			}
		}
		else{
			$opbalance = OpeningBalance::model()->findAll("party_id='".$partyId."' and company_id='".$companyId."'");
			$opening_balance = 0;
			foreach($opbalance as $opb){
				$opening_balance += $opb->opening_balance;
			}
		}
		
		if($unitName > 0)
			$tBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName."'");
		else
			$tBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."'");
		//return "select *from bill_info where bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id='' and company_id='".$companyId."' and unitName='".$unitName."'";
		$sumTBill =0;
		for($k=0; $k<sizeof($tBill); $k++){
			$command = Yii::app()->db->createCommand();
			$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1'")->queryAll();
			for($m=0; $m<sizeof($query); $m++)
			{
				$sumTBill += $query[$m]['cBill'];
			}
		}
		
		//return $sumTBill;
		
		if($unitName > 0)
			$aBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName."'");
		else
			$aBill = BillInfo::model()->findAll("bill_date < '".$fromDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."'");
			
		if(sizeof($aBill)>0){
			for($l=0; $l<sizeof($aBill); $l++){
				$command = Yii::app()->db->createCommand();
				$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
				for($m=0; $m<sizeof($query); $m++)
				{
					$sumTBill += $query[$m]['aBill'];
				}
							
			}
		}
		
		
		if($unitName > 0)
			$payParty = VoucherPayment::model()->findAll("party_id='".$partyId."' and payment_date < '".$fromDate."'  and company_id='".$companyId."' and unitName='".$unitName."'");
		else
			$payParty = VoucherPayment::model()->findAll("party_id='".$partyId."' and payment_date < '".$fromDate."'  and company_id='".$companyId."'");
			
		if(sizeof($payParty)>0){
			$Vpayment=0;
			foreach($payParty as $payInfo){
				$Vpayment +=  $payInfo->amount;
			}
		}

		//return $sumTBill;
		
		//final opening balance
		$calOpeningBalance = ($sumTBill + $opening_balance) - $Vpayment;	
		return $calOpeningBalance;
	}
	
	//Generate party adjustment ----------- ---------------------- -----------------
	public function PartyAdjustment($fromDate,$toDate,$partyId,$companyId,$unitName)
	{
		
		$sumTBill=0;
		for($a=0; $a < sizeof($unitName); $a++)
		{
			//find adjust bill
			$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName[$a]."' and adjust_details!='1'");
			
			if(sizeof($aBill)>0){
				for($l=0; $l<sizeof($aBill); $l++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
					for($m=0; $m<sizeof($query); $m++){
						$sumTBill += $query[$m]['aBill'];
					}			
				}
			}
			//end adjust bill
		}
		
		for($i=0;$i<sizeof($unitName);$i++){
			
			$command = Yii::app()->db->createCommand();
			$Payment = $command->select("*")
						   ->from("voucher_payment")
						   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName[$i]."' and voucher_no='0'")
						   ->queryAll();
			
			if(sizeof($Payment)>0){
				for($l=0; $l<sizeof($Payment); $l++){
					
					$sumTBill += $Payment[$l][amount];
					/*if($Payment[$l][amount] >= '0'){
						$sumTBill += $Payment[$l][amount];
					}else
					{
						$sumTBill -= $Payment[$l][amount];
					}*/

				}
			}
		}
		
		
		return $sumTBill;
	}
	
	
	//Generate party bill with factory------- ---------------- ------------------ ------------------- ---------------- -------------
	public function PartyBillFactory($fromDate,$toDate,$partyId,$companyId,$unitName,$adjustment,$factory_id)
	{
		if(is_array($unitName))
		{
			$sumTBill =0;
			for($a=0; $a < sizeof($unitName); $a++){
				//find tbill
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName[$a]."' and parent_id='' and adjust_details!='1' and factory_id='".$factory_id."'");
				
				for($k=0; $k<sizeof($tBill); $k++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1' and factory_id='".$factory_id."'")->queryAll();
					for($m=0; $m<sizeof($query); $m++){
						$sumTBill += $query[$m]['cBill'];
					}
				}
				///end find tbill
				
				//if bill calculation with adjustment
				if($adjustment=='Y')
				{
					//find adjust bill
					$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName[$a]."' and adjust_details!='1' and factory_id='".$factory_id."'");
					if(sizeof($aBill)>0){
						for($l=0; $l<sizeof($aBill); $l++){
							$command = Yii::app()->db->createCommand();
							$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."' and factory_id='".$factory_id."'")->queryAll();
							for($m=0; $m<sizeof($query); $m++){
								$sumTBill += $query[$m]['aBill'];
							}			
						}
					}
					//end adjust bill
				}

			}
		}else{
			//find bill
			if($unitName > 0)
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."' and parent_id='' and adjust_details!='1' and factory_id='".$factory_id."'");
			else
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and parent_id='' and adjust_details!='1' and factory_id='".$factory_id."'");
				
			$sumTBill =0;
			for($k=0; $k<sizeof($tBill); $k++){
				
					$command = Yii::app()->db->createCommand();
					$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1' and factory_id='".$factory_id."'")->queryAll();
					for($m=0; $m<sizeof($query); $m++){
						$sumTBill += $query[$m]['cBill'];
					}
	
			}
			//end find bill
			
		//return "select *from bill_info where bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."' and parent_id=''";
		
		
			//if bill calculation with adjustment
			if($adjustment=='Y')
			{
				//find adjust bill
				if($unitName > 0)
					$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName."' and adjust_details!='1' and factory_id='".$factory_id."'");
				else
					$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and adjust_details!='1' and factory_id='".$factory_id."'");
				
				if(sizeof($aBill)>0){
					for($l=0; $l<sizeof($aBill); $l++){
						$command = Yii::app()->db->createCommand();
						$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."' and factory_id='".$factory_id."'")->queryAll();
						for($m=0; $m<sizeof($query); $m++){
							$sumTBill += $query[$m]['aBill'];
						}			
					}
				}
				//end find adjust bill
			}
			
			//$sumTBill = 800;
		}
		
		//final opening balance
		return $sumTBill;	
	}
	
	
	
	
	
	//Generate party bill ------- ---------------- ------------------ ------------------- ---------------- -------------
	public function PartyBill($fromDate,$toDate,$partyId,$companyId,$unitName,$adjustment)
	{
		if(is_array($unitName))
		{
			$sumTBill =0;
			for($a=0; $a < sizeof($unitName); $a++){
				//find tbill
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName[$a]."' and parent_id='' and adjust_details!='1'");
				
				for($k=0; $k<sizeof($tBill); $k++){
					$command = Yii::app()->db->createCommand();
					$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1'")->queryAll();
					for($m=0; $m<sizeof($query); $m++){
						$sumTBill += $query[$m]['cBill'];
					}
				}
				///end find tbill
				
				//if bill calculation with adjustment
				if($adjustment=='Y')
				{
					//find adjust bill
					$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName[$a]."' and adjust_details!='1'");
					if(sizeof($aBill)>0){
						for($l=0; $l<sizeof($aBill); $l++){
							$command = Yii::app()->db->createCommand();
							$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
							for($m=0; $m<sizeof($query); $m++){
								$sumTBill += $query[$m]['aBill'];
							}			
						}
					}
					//end adjust bill
				}

			}
		}else{
			//find bill
			if($unitName > 0)
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."' and parent_id='' and adjust_details!='1'");
			else
				$tBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and parent_id='' and adjust_details!='1'");
				
			$sumTBill =0;
			for($k=0; $k<sizeof($tBill); $k++){
				
					$command = Yii::app()->db->createCommand();
					$query = $command->select("((delivery_quantity+extra_quantity)*sale_price) as cBill")->from("delivery_challan_product")->where("challan_id='".$tBill[$k][challan_no]."' and adjust_details!='1'")->queryAll();
					for($m=0; $m<sizeof($query); $m++){
						$sumTBill += $query[$m]['cBill'];
					}
	
			}
			//end find bill
			
		//return "select *from bill_info where bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and company_id='".$companyId."' and unitName='".$unitName."' and parent_id=''";
		
		
			//if bill calculation with adjustment
			if($adjustment=='Y')
			{
				//find adjust bill
				if($unitName > 0)
					$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and unitName='".$unitName."' and adjust_details!='1'");
				else
					$aBill = BillInfo::model()->findAll("bill_date BETWEEN '".$fromDate."' and '".$toDate."' and party_id='".$partyId."' and parent_id!='' and company_id='".$companyId."' and adjust_details!='1'");
				
				if(sizeof($aBill)>0){
					for($l=0; $l<sizeof($aBill); $l++){
						$command = Yii::app()->db->createCommand();
						$query = $command->select("(t_qty*extra_price) as aBill")->from("bill_adjust_product")->where("bill_no='".$aBill[$l][parent_id]."'")->queryAll();
						for($m=0; $m<sizeof($query); $m++){
							$sumTBill += $query[$m]['aBill'];
						}			
					}
				}
				//end find adjust bill
			}
			
			//$sumTBill = 800;
		}
		
		//final opening balance
		return $sumTBill;	
	}
	
	public function PartyPaymentFactory($fromDate,$toDate,$partyId,$companyId,$unitName,$adjustment,$factory_id)
	{
		if(is_array($unitName)){
			$fbalance = 0;
			for($i=0;$i<sizeof($unitName);$i++){
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName[$i]."' and factory_id='".$factory_id."'")
								   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName[$i]."' and voucher_no != '0' and factory_id='".$factory_id."'")
								   ->queryAll();
				}
				
				if(sizeof($Payment)>0){
					for($l=0; $l<sizeof($Payment); $l++){
						if($Payment[$l][voucher_no] != '0'){
							$fbalance += $Payment[$l][amount];
						}else{
							if($Payment[$l][amount] >= '0'){
								$fbalance += $Payment[$l][amount];
							}else
							{
								$fbalance -= $Payment[$l][amount];
							}
						}
					}
				}
			}

		}else{
			if($unitName > 0)
			{
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName."' and factory_id='".$factory_id."'")
								   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName."' and voucher_no != '0' and factory_id='".$factory_id."'")
								   ->queryAll();
				}
			}
			else
			{
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
									   ->from("voucher_payment")
									   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and factory_id='".$factory_id."'")
									   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
									   ->from("voucher_payment")
									   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and voucher_no != '0' and factory_id='".$factory_id."'")
									   ->queryAll();
				}
			}	
			
			$fbalance = 0;
			if(sizeof($Payment)>0){
				for($l=0; $l<sizeof($Payment); $l++){
					if($Payment[$l][voucher_no] != '0'){
						$fbalance += $Payment[$l][amount];
					}else{
						if($Payment[$l][amount] >= '0'){
							$fbalance += $Payment[$l][amount];
						}else
						{
							$fbalance -= $Payment[$l][amount];
						}
					}
				}
			}			
		}
		
		return $fbalance;
	}
	
	public function PartyPayment($fromDate,$toDate,$partyId,$companyId,$unitName,$adjustment)
	{
		if(is_array($unitName)){
			$fbalance = 0;
			for($i=0;$i<sizeof($unitName);$i++){
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName[$i]."'")
								   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName[$i]."' and voucher_no != '0'")
								   ->queryAll();
				}
				
				if(sizeof($Payment)>0){
					for($l=0; $l<sizeof($Payment); $l++){
						if($Payment[$l][voucher_no] != '0'){
							$fbalance += $Payment[$l][amount];
						}else{
							if($Payment[$l][amount] >= '0'){
								$fbalance += $Payment[$l][amount];
							}else
							{
								$fbalance -= $Payment[$l][amount];
							}
						}
					}
				}
			}

		}else{
			if($unitName > 0)
			{
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName."'")
								   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
								   ->from("voucher_payment")
								   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and unitName='".$unitName."' and voucher_no != '0'")
								   ->queryAll();
				}
			}
			else
			{
				if($adjustment == 'Y')
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
									   ->from("voucher_payment")
									   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."'")
									   ->queryAll();
				}
				else
				{
					$command = Yii::app()->db->createCommand();
					$Payment = $command->select("*")
									   ->from("voucher_payment")
									   ->where("party_id='".$partyId."' and payment_date BETWEEN '".$fromDate."' and '".$toDate."' and company_id='".$companyId."' and voucher_no != '0'")
									   ->queryAll();
				}
			}	
			
			$fbalance = 0;
			if(sizeof($Payment)>0){
				for($l=0; $l<sizeof($Payment); $l++){
					if($Payment[$l][voucher_no] != '0'){
						$fbalance += $Payment[$l][amount];
					}else{
						if($Payment[$l][amount] >= '0'){
							$fbalance += $Payment[$l][amount];
						}else
						{
							$fbalance -= $Payment[$l][amount];
						}
					}
				}
			}			
		}
		
		return $fbalance;
	}

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}
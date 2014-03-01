<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.livequery.js"></script>


<!--uniformjs files-->
<!--<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/pixelmatrix-uniform-2446d99/jquery.uniform.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">
	$(function(){
	$("input, textarea, select, button").uniform();
	});
</script>
<link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl; ?>/js/pixelmatrix-uniform-2446d99/css/uniform.default.css" type="text/css" media="screen">-->
<!--uniformjs files-->


<script SRC="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.validate.js" type="text/javascript"></script>
<!--Initiate form validation - in this example on the login form-->
<script type="text/javascript">
$(document).ready(function() {
	$("#loginform").validate();
});
</script>
<link rel="shortcut icon" href="<?php echo Yii::app()->theme->baseUrl; ?>/images/favicon.png" />
<!-- LOAD TIPSY TOOLTIPS-->
<script type="text/javascript" SRC="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.tipsy.js"></script>
<!-- LOAD CUSTOM JQUERY SCRIPTS-->
<script type="text/javascript" SRC="<?php echo Yii::app()->theme->baseUrl; ?>/js/scripts.js"></script>
<!-- LOAD FACEBOX -->
<script type="text/javascript" SRC="<?php echo Yii::app()->theme->baseUrl; ?>/js/facebox.js"></script>
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/facebox.css" rel="stylesheet" type="text/css" />
<!-- LOAD FLOT GRAPHS -->
<script type="text/javascript" SRC="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.flot.pack.js"></script>
<script SRC="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery.validate.js" type="text/javascript"></script>
<script SRC="<?php echo Yii::app()->theme->baseUrl; ?>/js/graphs.js" type="text/javascript"></script>
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/styles.css" rel="stylesheet" type="text/css" />

<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/dropdown.css" rel="stylesheet" type="text/css" />
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/default.ultimate.css" rel="stylesheet" type="text/css" />


<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>
<body style="background-color:#FFF;">

<!--start header-->
<div id="header" class="png_bg">
  <div id="head_wrap" class="container_12">
    <!-- start of logo - you could replace this with an image of your logo -->
    <div id="logo" class="grid_4">
      <h1><a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.png" width="300" height="83" border="0" /></a></h1>
    </div>
    <!-- end logo -->
    

    
    <!-- start control panel -->
    <div id="controlpanel" class="grid_8">
	<?php
            if(Yii::app()->user->name === 'Guest')
            {
            
            }
            else
            {
                $company = Yii::app()->user->companyId;
				
                $command = Yii::app()->db->createCommand();
                $userName = $command->select("fullname")
                                    ->from("user_info")
                                    ->where("user_name='".Yii::app()->user->name."'")
                                    ->queryAll();
				
				if(isset(Yii::app()->user->factoryId))
				{
					$factory_id = Yii::app()->user->factoryId;
					if($factory_id!=0)
					{
						$command = Yii::app()->db->createCommand();
						$comp = $command->select("company_name")
											->from("company_info")
											->where("id='".$company."'")
											->queryAll();
											
						$command = Yii::app()->db->createCommand();
						$fact = $command->select("factory_name")
											->from("factory_info")
											->where("id='".$factory_id."'")
											->queryAll();
						
						echo "<p style='float:right;color:black;text-align:right;width:100%'>Company :<strong> ".$comp[0][company_name].",</strong> Factory :<strong> ".$fact[0][factory_name].",</strong><br /> Welcome <strong>".$userName[0][fullname]."</strong></p>";
					}
					else
					{
						echo "<p style='float:right;color:black;text-align:right;width:100%'>Welcome <strong>".$userName[0][fullname]."</strong></p>";
					}
				}
            }
        ?>
      <ul>
        <?php
			$this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				array('label'=>'Users', 'url'=>array('/userInfo/'), 'visible'=>(Yii::app()->user->isAdmin() == 'Admin') or Yii::app()->user->isAdmin() == 'SuperAdmin'),
				
				array('label'=>'Change Password', 'url'=>array('/userInfo/change_pass/'), 'visible'=>!Yii::app()->user->isGuest),
				
				array('label'=>'Company Unit', 'url'=>array('/companyUnit/'), 'visible'=>(Yii::app()->user->isAdmin() == 'Admin' and Yii::app()->user->unitName=='0') or Yii::app()->user->isAdmin() == 'SuperAdmin'),
				
				array('label'=>'Settings', 'url'=>array('/companyLogoAddress/'), 'visible'=>(Yii::app()->user->isAdmin() == 'Admin') or Yii::app()->user->isAdmin() == 'SuperAdmin'),
				
				array('label'=>'Company', 'url'=>array('/companyInfo/'), 'visible'=>Yii::app()->user->isAdmin() == 'SuperAdmin'),
				
				array('label'=>'Factory', 'url'=>array('/factoryInfo/'), 'visible'=>(Yii::app()->user->isAdmin() == 'Admin' and Yii::app()->user->unitName=='0') or Yii::app()->user->isAdmin() == 'SuperAdmin'),
				
				array('label'=>'Menu', 'url'=>array('/menuItem/'), 'visible'=>Yii::app()->user->isAdmin() == 'SuperAdmin'),
				
				array('label'=>'User Group', 'url'=>array('/userGroup/'), 'visible'=>Yii::app()->user->isAdmin() == 'SuperAdmin'),
				
				//array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>!Yii::app()->user->isGuest),
				
				array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
				),
			));
			
			/*if(Yii::app()->user->name === 'Guest')
			{
				
			}
			else if(Yii::app()->user->isAdmin() === 'EntryGroup')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else if(Yii::app()->user->isAdmin() === 'SaleOrderGroup')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else if(Yii::app()->user->isAdmin() === 'DeliveryOrderGroup')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else if(Yii::app()->user->isAdmin() === 'DeliveryChallanGroup')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else if(Yii::app()->user->isAdmin() === 'BillGroup')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else if(Yii::app()->user->isAdmin() === 'Admin' and Yii::app()->user->unitName=='0')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Users', 'url'=>array('/userInfo/')),
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Company Unit', 'url'=>array('/companyUnit/')),
					array('label'=>'Settings', 'url'=>array('/companyLogoAddress/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else if(Yii::app()->user->isAdmin() === 'Admin')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Users', 'url'=>array('/userInfo/')),
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Settings', 'url'=>array('/companyLogoAddress/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else if(Yii::app()->user->isAdmin() === 'SuperAdmin')
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Users', 'url'=>array('/userInfo/')),
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Company', 'url'=>array('/companyInfo/')),
					array('label'=>'Menu', 'url'=>array('/menuItem/')),
					array('label'=>'User Group', 'url'=>array('/userGroup/')),
					array('label'=>'Settings', 'url'=>array('/companyLogoAddress/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}
			else
			{
				$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Change Pass', 'url'=>array('/userInfo/change_pass/')),
					array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
					array('label'=>'Logout', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest)
					),
				));
			}*/
		?>
      <?php if(isset(Yii::app()->user->unitName) && Yii::app()->user->unitName == 0 && Yii::app()->user->factoryId == 0){?>
      	<li>
        <?php
			$this->widget('zii.widgets.CMenu',array(
				'items'=>array(
					array('label'=>'Party Balance CA', 'url'=>array('/reports/partyBalanceCA/'),),
					array('label'=>'St. Sales Coll.', 'url'=>array('/loadDetails/statementOfSalesOfCollection/'),),
					),
				));
		?>
        </li>
        <?php }?>
      </ul>
        
    </div>
    <!-- end control panel -->
    <!--end header-->
  </div>
</div>
<!-- EVERYTING BELOW IS THE MAIN CONTENT -->
<div id="main_content_wrap" class="container_12">
	<!-- start navigation -->
    <?php if($factory_id != 0)
	{
	?>
    	<div id="navigation" class=" grid_12">
        <?php
		
			$command = Yii::app()->db->createCommand();
			$menu_item = $command->select("id,name")->from("company_unit")->where("company_id='".Yii::app()->user->companyId."' and deleted='0'")->queryAll();
			//$command->getText();
			?>
			<ul>
                <li><a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/deliveryChallan/all_pending_challan">All Pending Challan</a></li>
                <?php
                for($t=0; $t<sizeof($menu_item); $t++)
                {
				?>
                    <li><a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/deliveryChallan/index?id=<?php echo $menu_item[$t][id]; ?>"><?php echo $menu_item[$t][name]; ?></a></li>
                <?php
                }
                ?>
                <li><a href="<?php echo Yii::app()->request->baseUrl; ?>/index.php/reports/factoryChallanRegister">Reports</a></li>
            </ul>
        </div>
    <?php
	}
	else
	{
	?>
    <div id="navigation" class=" grid_12">
      <?php 
	  if(isset(Yii::app()->user->userId))
		{
			$command = Yii::app()->db->createCommand();
			$menu_item = $command->select("menu_permission")->from("user_info")->where("id='".Yii::app()->user->userId."'")->queryAll();
				if(sizeof($menu_item) > 0)
				{
					echo "<ul class='dropdown dropdown-horizontal'>";
					$menu_list = explode(",",$menu_item[0]['menu_permission']);
					$displayCount = count($menu_list) - 1; 
					for($r=0; $r < count($menu_list); $r++)
					{
						if($displayCount==$r)
						{
							break;
						}
						
						//select parent menu
						$command = Yii::app()->db->createCommand();
						$selMenu = $command->select("id,name,link")->from("menu_item")->where("id='".$menu_list[$r]."' and parent='0'")->order("ordering")->queryAll();
						
						
						for($s=0; $s<sizeof($selMenu); $s++)
						{
							//check if child in parent menu
							$command = Yii::app()->db->createCommand();
							$selChild = $command->select("id,name,link")->from("menu_item")->where("parent='".$selMenu[$s][id]."'")->order("ordering")->queryAll();
							if(sizeof($selChild)>0){
								
								echo "<li class='mask'><a href='".$selMenu[$s][link]."'>".$selMenu[$s][name]."</a><ul>";
									for($t=0; $t<sizeof($selChild);$t++)
									{
										if(in_array($selChild[$t][id],$menu_list))
										{
										echo "<li><a href='".$selChild[$t][link]."'>".$selChild[$t][name]."</a></li>";
										}
									}
								echo "</ul></li>";
							}else{
								echo "<li class='mask'><a href='".$selMenu[$s][link]."'>".$selMenu[$s][name]."</a></li>";
							}
						}
					}
					echo "</ul>";
				}	
		}
		
		?>
    </div>
    <?php
	}
	?>
    <!-- end navigation -->
    
    
    
  <!--start icon doc place-->
  <!-- start icon dock-->
  <!--<div id="icondock" class="grid_12">
    
      <?php
			$pageName1 = $_GET['r'];
			$pp = explode("/", $pageName1);
			if(isset($pp[1]))
			{
				$pageName = $pp[1];		
			}
			else
			{
				$pageName = $_GET['r'];
			}
			
			switch ($pageName)
			{
				case "dashboard":
		?>
        	
      <!--<li><a href="dashboard.php?page=<?php echo base64_encode("products");?>" 'rel="tipsy" title="Products"'
		<?php if ($pageName=='products') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/product.png" /><br />
        Products</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("party");?>" 'rel="tipsy" title="Party"'
		<?php if ($pageName=='party') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/party_view.png" /><br />
        Party</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("sales-order");?>" 'rel="tipsy" title="Sales Order"'
		<?php if ($pageName=='sales-order') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/sales_order_view.png" /><br />
        Sales Order</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("delivery-order");?>" 'rel="tipsy" title="Delivery Order"'
		<?php if ($pageName=='delivery-order') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/basket.png" /><br />
        Delivery Order</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("delivery-challan");?>" 'rel="tipsy" title="Delivery Challan"'
		<?php if ($pageName=='delivery-challan') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/delivery_create.png" /><br />
        Delivery Challan</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("bill");?>" 'rel="tipsy" title="Bill"'
		<?php if ($pageName=='bill') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/bill.png" /><br />
        Bill</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("reports");?>" 'rel="tipsy" title="Reports"'
		<?php if ($pageName=='reports') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/date.png" /><br />
        Reports</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("bank");?>" 'rel="tipsy" title="Bank"'
		<?php if ($pageName=='bank') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/bank.png" /><br />
        Bank</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("users");?>" 'rel="tipsy" title="Users"'
		<?php if ($pageName=='users') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/users_view.png" /><br />
        Users</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("area");?>" 'rel="tipsy" title="Area"'
		<?php if ($pageName=='area') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/area_view.png" /><br />
        Area</a></li>-->
      <?php
		break;
		
		case "companyInfo":
		case "create":
		case "admin":
		
/*		$this->widget('zii.widgets.CMenu',array(
			'items'=>array(
				array('label'=>'Create Company', 'url'=>array('/companyInfo/create'), $htmlOptions=array('rel'=>'tipsy', 'title'=>'Add Company')),
				array('label'=>'Manage Company', 'url'=>array('/companyInfo/admin'))
			),
		));*/
		?>
        <ul>
        <li><a href="index.php?r=companyInfo/create" 'rel="tipsy" title="Add Product"'
		<?php if ($pageName=='frmProducts-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/product_add.png" /><br />
        Add Product</a></li>
      <li><a href="index.php?r=companyInfo/admin" 'rel="tipsy" title="View Products"'
		<?php if ($pageName=='products') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/products_view.png" /><br />
        View Products</a></li>
        <?php
		break;
		
		case "frmProducts-add":
		case "frmProducts-size":
		case "products":
		case "size":
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmProducts-add");?>" 'rel="tipsy" title="Add Product"'
		<?php if ($pageName=='frmProducts-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/product_add.png" /><br />
        Add Product</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("products");?>" 'rel="tipsy" title="View Products"'
		<?php if ($pageName=='products') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/products_view.png" /><br />
        View Products</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmProducts-size");?>" 'rel="tipsy" title="Add Size"'
		<?php if ($pageName=='frmProducts-size') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/size_add.png" /><br />
        Add Size</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("size");?>" 'rel="tipsy" title="View Size"'
		<?php if ($pageName=='size') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/size_view.png" /><br />
        View Size</a></li>
      <?php
		break;

		case "frmParty-add":
		case "party":		
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmParty-add");?>" 'rel="tipsy" title="Add Party"'
		<?php if ($pageName=='frmParty-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/party_add.png" /><br />
        Add Party</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("party");?>" 'rel="tipsy" title="View Party"'
		<?php if ($pageName=='party') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/party_view.png" /><br />
        View Party</a></li>
      <?php
		break;
		
		case "executive":
		case "executive-add":
		case "executive-view":
		?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("executive-add");?>" 'rel="tipsy" title="Add Executive"'
		<?php if ($pageName=='executive-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/executive_add.png" /><br />
        Add Executive</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("executive-view");?>" 'rel="tipsy" title="View Executives"'
		<?php if ($pageName=='executive-view') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/executives_view.png" /><br />
        View Executives</a></li>
      <?php
		break;
		
		case "sales-order":
		case "frmSalesOrder-add":		
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmSalesOrder-add");?>" 'rel="tipsy" title="Add Sales Order"'
		<?php if ($pageName=='frmSalesOrder-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/sales_order_add.png" /><br />
        Add Sales Order</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("sales-order");?>" 'rel="tipsy" title="View Sales Order"'
		<?php if ($pageName=='sales-order') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/sales_order_view.png" /><br />
        View-Sales Order</a></li>
      <?php
		break;
		
		case "delivery-order":
		case "delivery-orderApproved":
		case "delivery-orderPending":
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("delivery-orderPending");?>" 'rel="tipsy" title="Pending Orders"'
		<?php if ($pageName=='delivery-orderPending') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/pending.png" /><br />
        Pending Orders</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("delivery-orderApproved");?>" 'rel="tipsy" title="Approved Orders"'
		<?php if ($pageName=='delivery-orderApproved') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/approved.png" /><br />
        Approved Orders</a></li>
      <?php
		break;
		
		case "frmDeliveryChallan-add":
		case "delivery-challan":		
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("delivery-challan");?>" 'rel="tipsy" title="Create Challan"'
		<?php if ($pageName=='delivery-challan') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/delivery_create.png" /><br />
        Create Challan</a></li>
      <?php
		break;
		
		case "reports":
?>
      <?php
		break;
		
		case "bank":
		case "frmBank-add":
		case "bankBranch":
		case "frmBankBranch-add":
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmBank-add");?>" 'rel="tipsy" title="Add Bank"'
		<?php if ($pageName=='frmBank-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/bank.png" /><br />
        Add Bank</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("bank");?>" 'rel="tipsy" title="View Banks"'
		<?php if ($pageName=='bank') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/bank_view.png" /><br />
        View Banks</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmBankBranch-add");?>" 'rel="tipsy" title="Add Branch"'
		<?php if ($pageName=='frmBankBranch-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/branch_add.png" /><br />
        Add Branch</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("bankBranch");?>" 'rel="tipsy" title="View Branches"'
		<?php if ($pageName=='bankBranch') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/branch_view.png" /><br />
        View Branches</a></li>
      <?php
		break;
		
		case "area":
		case "frmArea-add":
		case "division":
		case "frmDivision-add":
		case "district":
		case "frmDistrict-add":
		case "thana":
		case "frmThana-add":
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmDivision-add");?>" 'rel="tipsy" title="Add Division"'
		<?php if ($pageName=='frmDivision-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/division_add.png" /><br />
        Add Division</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("division");?>" 'rel="tipsy" title="View Divisions"'
		<?php if ($pageName=='division') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/division_view.png" /><br />
        View Divisions</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmDistrict-add");?>" 'rel="tipsy" title="Add District"'
		<?php if ($pageName=='frmDistrict-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/district_add.png" /><br />
        Add District</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("district");?>" 'rel="tipsy" title="View Districts"'
		<?php if ($pageName=='district') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/district_view.png" /><br />
        View Districts</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmThana-add");?>" 'rel="tipsy" title="Add Thana"'
		<?php if ($pageName=='frmThana-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/thana_add.png" /><br />
        Add Thana</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("thana");?>" 'rel="tipsy" title="View Thanas"'
		<?php if ($pageName=='thana') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/thana_view.png" /><br />
        View Thanas</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("frmArea-add");?>" 'rel="tipsy" title="Add Area"'
		<?php if ($pageName=='frmArea-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/area_add.png" /><br />
        Add Area</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("area");?>" 'rel="tipsy" title="View Areas"'
		<?php if ($pageName=='area') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/area_view.png" /><br />
        View Areas</a></li>
      <?php
		break;
		
		case "users":
		case "users-add":		
?>
      <li><a href="dashboard.php?page=<?php echo base64_encode("users-add");?>" 'rel="tipsy" title="Add User"'
		<?php if ($pageName=='users-add') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/user_add.png" /><br />
        Add User</a></li>
      <li><a href="dashboard.php?page=<?php echo base64_encode("users");?>" 'rel="tipsy" title="View Users"'
		<?php if ($pageName=='users') echo 'class="active"';  ?>><img SRC="<?php echo Yii::app()->theme->baseUrl; ?>/images//icondock/users_view.png" /><br />
        View Users</a></li>
      <?php
	}//End Switch
		?>
    </ul>
  </div>-->
  <!-- end icon dock-->
  <div class="clearfix">&nbsp;</div>
  <!--start icon doc place-->
  <br />
  <div class="container_12">
    <?php 
 		echo $content;
  	?>
  </div>
  <!--start footer-->
  <div class="clearfix">&nbsp;</div>
  <div id="footer" class="grid_12">
    <p>&copy; Copyright <?php echo date('Y'); ?> Bashundhara Group | Design &amp; Developed by BGIT Software | <a href="#">Top</a></p>
  </div>
  <!--End footer-->
</div>
</body>
</html>

<?php
if (empty(Yii::app()->user->userId)) {
    $this->redirect(array('/site/login'));
}



date_default_timezone_set('Asia/Kuala_Lumpur')
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/js/jquery-1.7.1.js"></script>
        <!--<script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/prettyPhoto/js/jquery-1.6.1.min.js"></script>-->
        <script type="text/javascript" src="<?php echo Yii::app()->theme->baseUrl; ?>/prettyPhoto/js/jquery.prettyPhoto.js"></script>
        <link rel="stylesheet" href="<?php echo Yii::app()->theme->baseUrl; ?>/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function() {
                $("a[rel^='prettyPhoto']").prettyPhoto();
            });
        </script>


        <!--new link-->
        <link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/admin.css" rel="stylesheet" type="text/css" />
        <!--<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/behaviour.js" type="text/javascript"></script>-->


        <!--new link-->


        <title><?php echo CHtml::encode($this->pageTitle); ?></title>
    </head>
    <body>
        <!--[if !IE]>start wrapper<![endif]-->
        <div id="wrapper">
            <!--[if !IE]>start head<![endif]-->
            <div id="head">

                <!--[if !IE]>start logo and user details<![endif]-->
                <div id="logo_user_details">
                    <h1 id="logo"><a href="#">Ticketing</a></h1>
                    <!--[if !IE]>start user details<![endif]-->
                    <div id="user_details">
                        <ul id="user_details_menu">
                            <li>Welcome <strong><?php echo UserInfo::model()->findByPk(Yii::app()->user->userId)->fullname
?></strong></li>
                            <li>
                                <ul id="user_access">
                                    <li class="first"><a href="<?php echo $this->createUrl('/userInfo/myAccount') ?>">My account</a></li>
                                    <li class="last"><a href="<?php echo $this->createUrl('site/logout') ?>">Log out</a></li>
                                </ul>
                            </li>

                        </ul>
                        <div id="server_details">
                            <dl>
                                <dt>Server time :</dt>
                                <dd><?php echo date('h:i A') ?></dd>
                            </dl>
                            <dl>
                                <dt>Last login ip :</dt>
                                <dd><?php echo $_SERVER['REMOTE_ADDR']; ?></dd>
                            </dl>
                        </div>
                        <!--[if !IE]>start search<![endif]-->
                        <div id="search_wrapper">
                            <form action="<?php echo $this->createUrl(Yii::app()->controller->id . '/search') ?>" method="post">
                                <fieldset>
                                    <label>
                                        <input class="text" name="text" type="text" />
                                    </label>
                                    <span class="go"><input name="" type="submit" /></span>
                                </fieldset>
                            </form>
                            <ul id="search_wrapper_menu">
                                <li class="first"><a href="#">Advanced Search</a></li>
                                <li class="last"><a href="#">Admin Map</a></li>
                            </ul>
                        </div>
                        <!--[if !IE]>end search<![endif]-->
                    </div>

                    <!--[if !IE]>end user details<![endif]-->



                </div>

                <!--[if !IE]>end logo end user details<![endif]-->



                <!--[if !IE]>start menus_wrapper<![endif]-->
                <div id="menus_wrapper">


                    <?php
                    if (!empty(Yii::app()->user->userType)) {
                        $menuPermission = UserGroup::model()->findByPk(Yii::app()->user->userType)->menu_permission;
                        $accessMenu = explode(",", $menuPermission);
                    }
                    ?>


                    <div id="main_menu">
                        <ul>
                            <li><a href="<?php echo Yii::app()->request->baseUrl . '/index.php' ?>" <?php if (Yii::app()->controller->id == 'site') {
                        echo "class='selected'";
                    } ?>><span><span>Home</span></span></a></li>
                            <?php
                            $menuItem = MenuItem::model()->findAll("parent='0'");
                            foreach ($menuItem as $menu) {
                                if ($menu->link == "/index.php/" . Yii::app()->controller->id) {
                                    $selected = 'class="selected"';
                                } else {
                                    $findParentId = MenuItem::model()->find("link='/index.php/" . Yii::app()->controller->id . "'")->parent;
                                    if ($findParentId == $menu->id) {
                                        $selected = 'class="selected"';
                                    }
                                }
                                ?>
                                <li><a href="<?php echo Yii::app()->request->baseUrl . $menu->link ?>" <?php echo $selected ?>><span><span><?php echo $menu->name ?></span></span></a></li>
                                <?php
                                $selected = '';
                            }
                            ?>

                                <?php /*?>
                        <!--<li><a href="<?php echo $this->createUrl('/management') ?>" <?php if (Yii::app()->controller->id == 'management' || Yii::app()->controller->id == 'management' || Yii::app()->controller->id == 'company' || Yii::app()->controller->id == 'agents' || Yii::app()->controller->id == 'sectors' || Yii::app()->controller->id == 'carriers' || Yii::app()->controller->id == 'prices' || Yii::app()->controller->id == 'paymentTerms' || Yii::app()->controller->id == 'banks') {
                                echo "class='selected'";
                            } ?>><span><span>Management</span></span></a></li>
<li><a href="<?php echo $this->createUrl('/entry') ?>" <?php if (Yii::app()->controller->id == 'entry' || Yii::app()->controller->id == 'entry' || Yii::app()->controller->id == 'receipts' || Yii::app()->controller->id == 'dueCollection' || Yii::app()->controller->id == 'paymentVoucher' || Yii::app()->controller->id == 'invoice' || Yii::app()->controller->id == 'exchangeOrder') {
                                echo "class='selected'";
                            } ?>><span><span>Entry</span></span></a></li>
<li><a href="<?php echo $this->createUrl('/report') ?>" <?php if (Yii::app()->controller->id == 'report' || Yii::app()->controller->id == 'report' || Yii::app()->controller->id == 'rptOfficialReceipt' || Yii::app()->controller->id == 'rptReceiptSummary' || Yii::app()->controller->id == 'rptDuePaymentCollection' || Yii::app()->controller->id == 'rptApprovePaymentVoucher' || Yii::app()->controller->id == 'rptPaymentVoucher' || Yii::app()->controller->id == 'rptCollectionStatus' || Yii::app()->controller->id == 'rptAuditReport' || Yii::app()->controller->id == 'rptInvoice' || Yii::app()->controller->id == 'rptXO') {
                                echo "class='selected'";
                            } ?>><span><span>Report</span></span></a></li>
<li><a href="<?php echo $this->createUrl('/backup') ?>" <?php if (Yii::app()->controller->id == 'backup' || Yii::app()->controller->id == 'backup' || Yii::app()->controller->id == 'sysBackup' || Yii::app()->controller->id == 'sysRestore') {
                                echo "class='selected'";
                            } ?>><span><span>Backup</span></span></a></li>-->
                        <!--<li><a href="#"><span><span>Product Management</span></span></a></li>
                        <li><a href="#"><span><span>User Accounts</span></span></a></li>
                        <li><a href="#"><span><span>SEO</span></span></a></li>
                        <li class="last"><a href="#"><span><span>Static Pages</span></span></a></li>-->
                                <?php */?>
                        </ul>
                    </div>

                    <div id="sec_menu">
                        <ul>

                            <?php
                            if (Yii::app()->controller->id != 'site') {
                                $MenuId = MenuItem::model()->find("link='/index.php/" . Yii::app()->controller->id . "'")->id;
                                if ($findParentId == 0) {
                                    $subItem = MenuItem::model()->findAll("parent='" . $MenuId . "'");
                                } else {
                                    $subItem = MenuItem::model()->findAll("parent='" . $findParentId . "'");
                                }
                                foreach ($subItem as $subMenu) {
                                    if (sizeof($accessMenu) > 0 and in_array($subMenu->id, $accessMenu)) {
                                        ?>
                                    <li><!--<img src="/ticketing/company_img/mukul-PP.jpg" width="12" height="15" style="float:left;position:relative;margin:0px;padding:0px; top:13px; left:13px;" />--><a href="<?php echo Yii::app()->request->baseUrl . $subMenu->link ?>" ><?php echo $subMenu->name ?></a></li>
                                        <?php
                                    }
                                }
                            }
                            ?>

<!--<li><a href="#" class="sm1"><?php echo Yii::app()->controller->id; ?></a></li>
<li><a href="#" class="sm1">Security Settings</a></li>
                        <li><a href="#" class="sm2">Chat and PMs</a></li>
                        <li><a href="#" class="sm3">Search Options</a></li>
                        <li><a href="#" class="sm4">Moderators</a></li>
                        <li><a href="#" class="sm5">Upload Options</a></li>
                        <li><a href="#" class="sm6">Download Options</a></li>
                        <li><a href="#" class="sm7">Emails</a></li>
                        <li>
                                <span class="drop"><span><span><a href="#" class="sm8">More</a></span></span></span>
                                <ul>
                                        <li><a class="sm6" href="#">Download options</a></li>
                                        <li><a class="sm4" href="#">Menu item</a></li>
                                        <li><a class="sm6" href="#">Download options</a></li>
                                        <li><a class="sm6" href="#">Download options</a></li>
                                        <li><a class="sm6" href="#">Download options</a></li>
                                </ul>
                        </li>-->
                        </ul>
                    </div>
                </div>
                <!--[if !IE]>end menus_wrapper<![endif]-->



            </div>
            <!--[if !IE]>end head<![endif]-->

            <!--[if !IE]>start content<![endif]-->
            <div id="contentT">

                <!--[if !IE]>start page<![endif]-->
                <div id="page">
                    <div class="inner">
                        <!--[if !IE]>start section<![endif]-->	
                        <div class="section">
<?php echo $content ?>
                        </div>
                        <!--[if !IE]>end quick info<![endif]-->
                    </div>
                </div>
                <!--[if !IE]>end sidebar<![endif]-->

                <!--[if !IE]>start sidebar<![endif]-->
                <div id="sidebar">
                    <div class="inner">
                        <!--[if !IE]>start calendar<![endif]-->
                        <div class="calendar">
                            <div class="calendar_top">
                                <strong><?php echo date("H:i") ?></strong>
                                <span><?php echo date("l") . " " . date("j, M Y") ?></span>
                            </div>
                            <div class="calendar_middle">
                                <div class="calendar_data">
<?php
$time = time();
echo CalenderController::generate_calendar(date('Y', $time), date('n', $time), NULL, 2);
?>
                                </div>
                            </div>
                            <div class="calendar_bottom"></div>

                        </div>
                        <!--[if !IE]>end calendar<![endif]-->


                        <!--[if !IE]>start section<![endif]-->	
                        <div class="section">
                            <!--[if !IE]>start title wrapper<![endif]-->
                            <div class="title_wrapper">
                                <h2>Sidebar Menu</h2>
                                <span class="title_wrapper_left"></span>
                                <span class="title_wrapper_right"></span>
                            </div>
                            <!--[if !IE]>end title wrapper<![endif]-->
                            <!--[if !IE]>start section content<![endif]-->
                            <div class="section_content">
                                <!--[if !IE]>start section content top<![endif]-->
                                <div class="sct">
                                    <div class="sct_left">
                                        <div class="sct_right">
                                            <div class="sct_left">
                                                <div class="sct_right">
                                                    <ul class="sidebar_menu">
                                                        <li><a href="<?php echo $this->createUrl('/management') ?>">Management</a></li>
                                                        <li><a href="<?php echo $this->createUrl('/bill') ?>">Bill</a></li>
                                                        <li><a href="<?php echo $this->createUrl('/bill/chkbill') ?>">Check Bill</a></li>
                                                        <li><a href="<?php echo $this->createUrl('/voucher') ?>">Voucher</a></li>
                                                        <li><a href="<?php echo $this->createUrl('/mealVoucher') ?>">Meal Voucher</a></li>
                                                        

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--[if !IE]>end section content top<![endif]-->
                                <!--[if !IE]>start section content bottom<![endif]-->
                                <span class="scb"><span class="scb_left"></span><span class="scb_right"></span></span>
                                <!--[if !IE]>end section content bottom<![endif]-->

                            </div>
                            <!--[if !IE]>end section content<![endif]-->
                        </div>
                        <!--[if !IE]>end section<![endif]-->














                    </div>
                </div>
                <!--[if !IE]>end sidebar<![endif]-->


            </div>
            <!--[if !IE]>end content<![endif]-->

        </div>
        <!--[if !IE]>end wrapper<![endif]-->

        <!--[if !IE]>start footer<![endif]-->
        <div id="footer">
            <div id="footer_inner">

                <div style="text-align: center">
                    <strong>Travel Bureau</strong><br>
                        Near The Gateway Hotel, Fatehabad Road, Agra – 282001 | Tel: 0562–2331118/2330230/2330245/ 233068 Fax: 0562-­‐ 2330206, 2331219 | E-­‐mail: agra@travelbureauindia.com<br>
                            AGRA | GWALIOR | JHANSI | KHAJURAHO | KOLKATA | VARANASI | DELHI 
                            </div>

                            <!--		<dl class="copy">
                                                    <dt><strong>Developed By</strong> <a href="http://www.aspiringteam.com" target="_blank"><em>Aspiring Team PVT. LTD.</em></a></dt>
                                                    <dd>&copy; 2012 <?php echo Company::model()->findByPk(1)->name ?>   All rights reserved.</dd>
                                            </dl>
                                            
                                            <dl class="quick_links">
                                                    <dt><strong>Quick Links :</strong></dt>
                                                    <dd>
                                                            <ul>
                                                    <li><a href="<?php echo Yii::app()->request->baseUrl . '/index.php' ?>" <?php if (Yii::app()->controller->id == 'site') {
    echo "class='selected'";
} ?>>Home</a></li>
<?php
$menuItem = MenuItem::model()->findAll("parent='0'");
foreach ($menuItem as $menu) {
    ?>
                                                                                        <li><a href="<?php echo Yii::app()->request->baseUrl . $menu->link ?>"><?php echo $menu->name ?></a></li>
                                <?php
                            }
                            ?>
                                                <li><a href="<?php echo Yii::app()->request->baseUrl . '/index.php/site/logout' ?>" <?php if (Yii::app()->controller->id == 'site') {
                                echo "class='selected'";
                            } ?>>Log out</a></li>
                                                                    
                                                                    
                                                            </ul>
                                                    </dd>
                                            </dl>
                                            
                                            
                                            <dl class="help_links">
                                                    <dt><strong>Need Help ?</strong></dt>
                                                    <dd>
                                                            <ul>
                                                                    <li><a href="http://www.aspiringteam.com" target="_blank">Live Help</a></li>
                                                                    <li><a href="http://www.aspiringteam.com" target="_blank">FAQ</a></li>
                                                                    <li class="last"><a href="http://www.aspiringteam.com" target="_blank">Knowledgebase</a></li>
                                                            </ul>
                                                    </dd>
                                            </dl>-->

                            </div>
                            </div>
                            <!--[if !IE]>end footer<![endif]-->
                            </body>
                            </html>
                            <style>
                                p{
                                    padding:0px!important;
                                }
                            </style>

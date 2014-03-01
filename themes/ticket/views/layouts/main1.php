<?php date_default_timezone_set('Asia/Kuala_Lumpur')?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!--new link-->
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/admin.css" rel="stylesheet" type="text/css" />
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/behaviour.js" type="text/javascript"></script>
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
				<h1 id="logo"><a href="#">websitename Administration Panel</a></h1>
				<!--[if !IE]>start user details<![endif]-->
				<div id="user_details">
					<ul id="user_details_menu">
						<li>Welcome <strong>Administrator</strong></li>
						<li>
							<ul id="user_access">
								<li class="first"><a href="#">My account</a></li>
								<li class="last"><a href="#">Log out</a></li>
							</ul>
						</li>
						<li><a class="new_messages" href="#">4 new messages</a></li>
					</ul>
					<div id="server_details">
						<dl>
							<dt>Server time :</dt>
							<dd>6:45 AM</dd>
						</dl>
						<dl>
							<dt>Last login ip :</dt>
							<dd>192.168.0.15</dd>
						</dl>
					</div>
					<!--[if !IE]>start search<![endif]-->
					<div id="search_wrapper">
						<form action="#">
							<fieldset>
								<label>
									<input class="text" name="" type="text" />
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
				
				
				
				
				
				<div id="main_menu">
					<ul>
						<li><a href="#" class="selected"><span><span>Main Controls</span></span></a></li>
						<li><a href="#"><span><span>Server Settings</span></span></a></li>
						<li><a href="#"><span><span>Product Management</span></span></a></li>
						<li><a href="#"><span><span>User Accounts</span></span></a></li>
						<li><a href="#"><span><span>SEO</span></span></a></li>
						<li class="last"><a href="#"><span><span>Static Pages</span></span></a></li>
					</ul>
				</div>
				
				
				
				<div id="sec_menu">
					<ul>
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
						</li>
					</ul>
				</div>
			</div>
			<!--[if !IE]>end menus_wrapper<![endif]-->
			
			
			
		</div>
		<!--[if !IE]>end head<![endif]-->
		
		<!--[if !IE]>start content<![endif]-->
		<div id="content">
        <?php echo $content?>
        </div>
		<!--[if !IE]>end content<![endif]-->
		
	</div>
	<!--[if !IE]>end wrapper<![endif]-->
	
	<!--[if !IE]>start footer<![endif]-->
	<div id="footer">
		<div id="footer_inner">
		
		<dl class="copy">
			<dt><strong>HyperAdmin</strong> <em>build 26122008</em></dt>
			<dd>&copy; 2008 Yourcompany.com  All rights reserved.</dd>
		</dl>
		
		<dl class="quick_links">
			<dt><strong>Quick Links :</strong></dt>
			<dd>
				<ul>
					<li><a href="#">Dashboard </a></li>
					<li><a href="#">My Account</a></li>
					<li><a href="#">General Settings</a></li>
					<li><a href="#">Static Pages</a></li>
					<li><a href="#">Users</a></li>
					<li><a href="#">Products</a></li>
					<li><a href="#">Marketing</a></li>
					<li class="last"><a href="#">Log out</a></li>
				</ul>
			</dd>
		</dl>
		
		
		<dl class="help_links">
			<dt><strong>Need Help ?</strong></dt>
			<dd>
				<ul>
					<li><a href="#">Live Help</a></li>
					<li><a href="#">FAQ</a></li>
					<li class="last"><a href="#">Knowledgebase</a></li>
				</ul>
			</dd>
		</dl>
	
		</div>
	</div>
	<!--[if !IE]>end footer<![endif]-->
</body>
</html>

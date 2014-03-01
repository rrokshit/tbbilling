<?php date_default_timezone_set('Asia/Kuala_Lumpur')?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--new link-->
<link href="<?php echo Yii::app()->theme->baseUrl; ?>/css/admin-login.css" rel="stylesheet" type="text/css" />
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/behaviour.js" type="text/javascript"></script>
<!--new link-->
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>
<body style="background-color:#4E5D65;">
	<!--[if !IE]>start wrapper<![endif]-->
	<div id="wrapper">
		
		
		
		
		<!--[if !IE]>start login wrapper<![endif]-->
		<div id="login_wrapper">
			
			
			<!--<div class="error">
				<div class="error_inner">
					<strong>Access Denied</strong> | <span>user/password combination wrong</span>
				</div>
			</div>-->
			
			
			
			<!--[if !IE]>start login<![endif]-->
			<?php echo $content?>
			<!--[if !IE]>end login<![endif]-->
		</div>
		<!--[if !IE]>end login wrapper<![endif]-->
	</div>
	<!--[if !IE]>end wrapper<![endif]-->
</body>
</html>

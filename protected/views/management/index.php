<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>Dashboard</h2>
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
                            <!--[if !IE]>start dashboard menu<![endif]-->
                            <div class="dashboard_menu_wrapper">
                            <ul class="dashboard_menu">
                            	<?php
									if(!empty(Yii::app()->user->userType))
									{
										$menuPermission = UserGroup::model()->findByPk(Yii::app()->user->userType)->menu_permission;
										$accessMenu = explode(",",$menuPermission);
									}
								
									$dashSubId = MenuItem::model()->find("link='/index.php/".Yii::app()->controller->id."'")->id;
									$menuDash = MenuItem::model()->findAll("parent='".$dashSubId."'");
									foreach($menuDash as $dashMenu)
									{
										if(sizeof($accessMenu)>0 and in_array($dashMenu->id,$accessMenu))
										{
								?>
                                	<li><a href="<?php echo Yii::app()->request->baseUrl.$dashMenu->link?>" ><span><img src="<?php echo Yii::app()->request->baseUrl?>/company_img/mukul-PP.png" width="64" height="64" style="position:relative;margin:0px;padding:0px;" /><br /><?php echo $dashMenu->name?></span></a></li>
                                <?php
										}
									}
									?>
                                <!--<li><a href="<?php echo $this->createUrl('/management')?>" class="d1"><span>Management</span></a></li>
                                <li><a href="<?php echo $this->createUrl('/entry')?>" class="d2"><span>Entry</span></a></li>
                                <li><a href="<?php echo $this->createUrl('/report')?>" class="d9"><span>Report</span></a></li>
                                <li><a href="<?php echo $this->createUrl('/backup')?>" class="d8"><span>Backup</span></a></li>-->
                                
                                
                            </ul>
                            </div>
                            <!--[if !IE]>end dashboard menu<![endif]-->
                            
                            
                            
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
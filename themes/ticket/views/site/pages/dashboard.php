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
                                    if (!empty(Yii::app()->user->userType)) {
                                        $menuPermission = UserGroup::model()->findByPk(Yii::app()->user->userType)->menu_permission;
                                        $accessMenu = explode(",", $menuPermission);
                                        if (sizeof($accessMenu) > 0) {
                                            for ($i = 0; $i < sizeof($accessMenu); $i++) {
                                                $menuInfo = MenuItem::model()->findByPk($accessMenu[$i]);
                                                if ($menuInfo->parent == 0 and $menuInfo->name != '') {
                                                    ?>
                                                    <li><a href="<?php echo Yii::app()->request->baseUrl . $menuInfo->link ?>"><span><img src="<?php echo Yii::app()->request->baseUrl ?>/company_img/mukul-PP.png" width="64" height="64" style="position:relative;margin:0px;padding:0px;" /><br /><?php echo $menuInfo->name ?></span></a></li>
                                                    <?php
                                                }
                                            }
                                        }
                                    }
                                    ?>

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
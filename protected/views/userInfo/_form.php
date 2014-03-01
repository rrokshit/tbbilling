
<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/DATETIME/datetimepicker_css.js"></script>
<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>User Information</h2>

        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('index') ?>"><span><span>List User</span></span></a></li>

            <li><a href="<?php echo $this->createUrl('create') ?>" class="active"><span><span>Create User</span></span></a></li>

        </ul>
        <!--[if !IE]>end section menu<![endif]-->


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

                            <!--[if !IE]>start forms<![endif]-->
                            <?php
                            $form = $this->beginWidget('CActiveForm', array(
                                'id' => 'user-info-form',
                                'htmlOptions' => array('class' => 'search_form general_form', 'enctype' => "multipart/form-data"),
                                'enableAjaxValidation' => false,
                                    ));
                            ?>
                            <!--[if !IE]>start fieldset<![endif]-->
                            <fieldset>
                                <!--[if !IE]>start forms<![endif]-->
                                <div class="forms">

                                    <!--[if !IE]>start system messages<![endif]-->
                                    <ul class="system_messages">

                                        <li class="white"><span class="ico"></span><strong class="system_title">Fields with <span class="required">*</span> are required.</li>

                                    </ul>
                                    <!--[if !IE]>end system messages<![endif]-->


                                    <div class="row">
<?php echo $form->labelEx($model, 'fullname'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model, 'fullname', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model, 'fullname'); ?></span>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <label>Date of birth</label>
                                        <div class="inputs">
                                            <span class="input_wrapper"><input type="text" class="text dsmall" id="UserInfo_date_of_birth" name="UserInfo[date_of_birth]" value="<?php
if ($_GET['id'] > 0) {
    echo date("d-m-Y", strtotime(UserInfo::model()->findByPk($_GET['id'])->date_of_birth));
}
?>"/></span>
                                            <span class="system"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images2/cal.png" onClick="javascript:NewCssCal('UserInfo_date_of_birth','ddmmyyyy')" 
                                                                      style="cursor:pointer; vertical-align:bottom" width="26" height="24"/></span>
                                        </div>
                                    </div>

                                    <div class="row">
<?php echo $form->labelEx($model, 'phone'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model, 'phone', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model, 'phone'); ?></span>
                                        </div>

                                    </div>

                                    <div class="row">
<?php echo $form->labelEx($model, 'email'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model, 'email', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model, 'email'); ?></span>
                                        </div>

                                    </div>

                                    <div class="row">
<?php echo $form->labelEx($model, 'address'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model, 'address', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model, 'address'); ?></span>
                                        </div>

                                    </div>

                                    <div class="row">
<?php echo $form->labelEx($model, 'user_name'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model, 'user_name', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model, 'user_name'); ?></span>
                                        </div>

                                    </div>


                                    <div class="row">
                                            <?php echo $form->labelEx($model, 'password'); ?>
                                        <div class="inputs">
                                            <?php
                                            if ($_GET['id'] > 0) {
                                                $pp = UserInfo::model()->findByPk($_GET['id'])->password;
                                                ?>
                                                <span class="input_wrapper"><input type="password" value="<?php echo UserInfoController::decrypt($pp) ?>" id="UserInfo_password" name="UserInfo[password]" class="text" maxlength="100" size="60"></span>
                                            <?php } else { ?>
                                                <span class="input_wrapper"><?php echo $form->passwordField($model, 'password', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
<?php } ?>
                                            <span class="system negative"><?php echo $form->error($model, 'password'); ?></span>
                                        </div>

                                    </div>

                                    <div class="row">
<?php echo $form->labelEx($model, 'avatar'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper blank"><?php echo $form->fileField($model, 'avatar', array('maxlength' => 100)); ?></span>
                                            <span class="system negative"><?php echo $form->error($model, 'avatar'); ?></span>
                                        </div>

                                    </div>


                                        <?php if (Yii::app()->user->userType == '1' || Yii::app()->user->userId != $_GET['id']) { ?>
                                        <div class="row">
                                                <?php echo $form->labelEx($model, 'type_id'); ?>
                                            <div class="inputs">
                                                <?php if (Yii::app()->user->userType == '1') { ?>
                                                    <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'type_id', CHtml::listData(UserGroup::model()->findAll("status='ACTIVE'"), 'id', 'group_name'), array('empty' => 'Select Type'), array('size' => 1, 'maxlength' => 10, 'class' => 'text')); ?></span>
                                                <?php } else { ?>
                                                    <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'type_id', CHtml::listData(UserGroup::model()->findAll("status='ACTIVE' and id!='1'"), 'id', 'group_name'), array('empty' => 'Select Type'), array('size' => 1, 'maxlength' => 10, 'class' => 'text')); ?></span>
    <?php } ?>
                                                <span class="system negative"><?php echo $form->error($model, 'type_id'); ?></span>
                                                <span class="system"><a href="" rel="prettyPhoto[iframe]" id="showPer" style="display:none">Show Present Permission</a></span>
                                            </div>

                                            <script>
                                                $("#UserInfo_type_id").change(function(){
                                                    var typeId = $(this).val();
                                                    //alert(typeId);
                                                    if(typeId=='')
                                                    {
                                                        $("#showPer").css("display","none");
                                                    }
                                                    else
                                                    {
                                                        $("#showPer").css("display","block");
                                                        var arr = "showPermission/"+typeId+"?iframe=true&amp;width=80%&amp;height=80%";
                                                        $("#showPer").attr("href",arr);
                                                    }
                                                });
                                            </script>

                                        </div>
<?php } ?>

                                    

                                    <div class="row">
<?php echo $form->labelEx($model, 'status'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'status', array('ACTIVE' => 'Active', 'INACTIVE' => 'Inactive'), array('size' => 1, 'maxlength' => 10, 'class' => 'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model, 'status'); ?></span>
                                        </div>

                                    </div>


                                    <!--[if !IE]>start row<![endif]-->
                                    <div class="row">
                                        <div class="buttons">
                                            <ul>
                                                <li><span class="button send_form_btn"><span><span><?php
if ($model->isNewRecord) {
    echo 'Create';
} else {
    echo 'Update';
}
?></span></span><?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></span></li>
                                            </ul>     
                                        </div>
                                    </div>
                                    <!--[if !IE]>end row<![endif]-->









                                </div>
                                <!--[if !IE]>end forms<![endif]-->

                            </fieldset>
                            <!--[if !IE]>end fieldset<![endif]-->

                            <?php $this->endWidget(); ?>
                            <!--[if !IE]>end forms<![endif]-->	






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
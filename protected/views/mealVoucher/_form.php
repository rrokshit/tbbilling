<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/DATETIME/datetimepicker_css.js"></script>
<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>Meal Voucher</h2>

        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('create') ?>" class="active"><span><span>Generate Meal Voucher</span></span></a></li>
            <li><a href="<?php echo $this->createUrl('admin') ?>" ><span><span>View Meal Voucher</span></span></a></li>
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

                            <?php
                            $form = $this->beginWidget('CActiveForm', array(
                                'htmlOptions' => array('class' => 'search_form general_form'),
                                'id' => 'meal-voucher-form',
                                'enableAjaxValidation' => false,
                            ));
                            ?>

                            <!--[if !IE]>start fieldset<![endif]-->
                            <fieldset>
                                <!--[if !IE]>start forms<![endif]-->
                                <div class="forms">

                                    <?php echo $form->errorSummary($model); ?>

                                    <!--[if !IE]>start system messages<![endif]-->
                                    <ul class="system_messages">
                                        <li class="white"><span class="ico"></span> <strong class="system_title">Fields with <span class="required">*</span> are required.</strong></li>
                                    </ul>
                                    <!--[if !IE]>end system messages<![endif]-->
                                    <!--?php echo $form->errorSummary($model); ?>-->
                                    <table style="width: 100%">
                                        <tr>
                                            <td>
                                                <div class="row">									
                                                    <?php echo $form->labelEx($model,'voucherCode'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'voucherCode', array('size' => 50, 'maxlength' => 50, "class" => "text",)); ?></span>
                                                    </div>
                                                </div>
                                            </td>
										</tr>
										<?php /*?><tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model,'date'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model,'date'); ?></span>
                                                    </div>
                                                </div>
                                            </td>
										</tr><?php */?>
									<tr>
										<td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'date'); ?>
                                                    <?php
                                                    if (isset($_GET['id']))
                                                        $dd = date("d-m-y", strtotime($model->date));
                                                    else
                                                        $dd = date("d-m-y");
                                                    ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'date', array('class' => 'text', 'value' => $dd)); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'date'); ?></span>

                                                    </div>
                                                    <span class="system"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images2/cal.png" onClick="javascript:NewCssCal('MealVoucher_date','ddmmyyyy')" style="cursor:pointer; vertical-align:bottom" width="26" height="24"/></span>
                                                </div>
                                            </td>
										</tr>
										<tr>                                      
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model,'agencyName'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'agencyName', array('size' => 60, 'maxlength' => 100, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
										</tr>
										<tr>											
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model,'groupFitName'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'groupFitName', array('size' => 60, 'maxlength' => 100, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
										</tr>
										<tr>							
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model,'numberOfPerson'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model,'numberOfPerson', array("class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
										</tr>
										<tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model,'hotelRestaurant'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'hotelRestaurant', array('size' => 60, 'maxlength' => 100, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
										</tr>
										<tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model,'meal'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'meal', array('Lunch' => 'Lunch', 'Dinner' => 'Dinner'), array('size' => 1, 'maxlength' => 10)); ?></span>
                                                    </div>
                                                </div>
											</td>
										</tr>
									</table>
						<table>
							<tr>
                                 <div>
                                    <div class="row">
                                        <div class="buttons">                                           
                                            <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></span>
                                        </div>
                                    </div>
                                </div>
							</tr>
						</table> 
                                <!--[if !IE]>end forms<![endif]-->
								</div>
                            </fieldset>

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







<?php /*?><div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'meal-voucher-form',
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'voucherCode'); ?>
		<?php echo $form->textField($model,'voucherCode',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'voucherCode'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'date'); ?>
		<?php echo $form->textField($model,'date'); ?>
		<?php echo $form->error($model,'date'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'agencyName'); ?>
		<?php echo $form->textField($model,'agencyName',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'agencyName'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'groupFitName'); ?>
		<?php echo $form->textField($model,'groupFitName',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'groupFitName'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'numberOfPerson'); ?>
		<?php echo $form->textField($model,'numberOfPerson'); ?>
		<?php echo $form->error($model,'numberOfPerson'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'hotelRestaurant'); ?>
		<?php echo $form->textField($model,'hotelRestaurant',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'hotelRestaurant'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'meal'); ?>
		<?php echo $form->textField($model,'meal',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'meal'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form --><?php */?>
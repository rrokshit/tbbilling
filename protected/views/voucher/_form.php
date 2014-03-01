<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/DATETIME/datetimepicker_css.js"></script>
<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>Voucher</h2>

        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('create') ?>" class="active"><span><span>Generate Voucher</span></span></a></li>
            <li><a href="<?php echo $this->createUrl('admin') ?>" ><span><span>View Voucher</span></span></a></li>
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
                                'id' => 'voucher-form',
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

                                        <li class="white"><span class="ico"></span><strong class="system_title">Fields with <span class="required">*</span> are required.</li>

                                    </ul>
                                    <!--[if !IE]>end system messages<![endif]-->
                                    <!--?php echo $form->errorSummary($model); ?>-->
                                    <table style="width: 90%">
                                        <tr>
                                            <td>
                                                <div class="row">									
                                                    <?php echo $form->labelEx($model, 'voucherNumber'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'voucherNumber', array('size' => 20, 'maxlength' => 10, "class" => "text",)); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'hotelName'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'hotelName', array('size' => 60, 'maxlength' => 100, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'hotelAddress'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper blank"><?php echo $form->textArea($model, 'hotelAddress', array('size' => 60, 'maxlength' => 250, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'hotelContact'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'hotelContact', array('size' => 60, 'maxlength' => 100, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="row" style="width:70%">
                                                    <?php echo $form->labelEx($model, 'checkIn'); ?>
                                                    <?php
                                                    if (isset($_GET['id']))
                                                        $dd = date("d-m-y", strtotime($model->checkIn));
                                                    else
                                                        $dd = date("d-m-y");
                                                    ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'checkIn', array("class" => "text", 'value' => $dd)); ?></span>
                                                    </div>
                                                </div>
                                                <span class="system"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images2/cal.png" onClick="javascript:NewCssCal('Voucher_checkIn', 'ddmmyyyy')" style="cursor:pointer; vertical-align:bottom" width="26" height="24"/></span>
                                            </td>
                                            <td>								
                                                <div class="row" style="width:70%">
                                                    <?php echo $form->labelEx($model, 'checkOut'); ?>
                                                    <?php
                                                    if (isset($_GET['id']))
                                                        $dd = date("d-m-y", strtotime($model->checkOut));
                                                    else
                                                        $dd = date("d-m-y");
                                                    ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'checkOut', array("class" => "text", 'value' => $dd)); ?></span>
                                                    </div>
                                                </div>
                                                <span class="system"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images2/cal.png" onClick="javascript:NewCssCal('Voucher_checkOut', 'ddmmyyyy')" style="cursor:pointer; vertical-align:bottom" width="26" height="24"/></span>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'guestName'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'guestName', array('size' => 60, 'maxlength' => 100, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'agencyCode'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'agencyCode', array('size' => 30, 'maxlength' => 30, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'mealPlan'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'mealPlan', array('EPAI' => 'EPAI', 'CPAI' => 'CPAI', 'MAPAI' => 'MAPAI', 'APAI' => 'APAI'), array('size' => 1, 'maxlength' => 10)); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'totalRoom'); ?>
                                                    <div class="inputs blank">
                                                        <?php if(Yii::app()->controller->action->id=='create'){
                                                            $totalRoom = 1;
                                                        }else{
                                                            $totalRoom = $model->totalRoom;
                                                        }
                                                        ?>
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'totalRoom', array('size' => 10, 'maxlength' => 10, "class" => "text", "value"=>$totalRoom,"readonly"=>"readonly")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'confirmationNumber'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'confirmationNumber', array('size' => 30, 'maxlength' => 30, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2">
                                                <br>
                                                <!-- toral room start -->
                                                <div>
                                                    <table style="width:100%" id="newaa">
                                                        <tr>
                                                            <td>Room Number</td>
                                                            <td>Guest Name</td>
                                                            <td>Room Type</td>
                                                            <td>Number Of Guest</td>
                                                            <td>Room Category</td>
                                                            <td></td>
                                                        </tr>
                                                        
                                                        <?php if(Yii::app()->controller->action->id=='update'){
                                                            $getRooms = VoucherRoom::model()->findAll("voucherId='".$model->voucherId."'");
                                                            $io=0;
                                                            foreach($getRooms as $preRoom):
                                                                $io++;
                                                                ?>
                                                        <tr>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[roomNumber][]', $preRoom->roomNumber, array('size' => 15, 'maxlength' => 50, "class" => "text")); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[guestName][]', $preRoom->guestName, array('size' => 15, 'maxlength' => 50, "class" => "text guestName")); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[roomType][]', $preRoom->roomType, array('size' => 15, 'maxlength' => 50, "class" => "text")); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[numberOfGuest][]', $preRoom->numberOfGuest, array('size' => 15, 'maxlength' => 50, "class" => "text")); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[roomCategory][]', $preRoom->roomCategory, array('size' => 15, 'maxlength' => 50, "class" => "text")); ?>
                                                            </td>
                                                            <?php if($io!=1){?>
                                                            <td class="approw">[X]</td>
                                                            <?php }?>
                                                        </tr>
                                                        <?php
                                                            endforeach;
                                                        }else{?>

                                                        <tr>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[roomNumber][]', 'Room 1', array('size' => 15, 'maxlength' => 50, "class" => "text",)); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[guestName][]', '', array('size' => 15, 'maxlength' => 50, "class" => "text guestName")); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[roomType][]', '', array('size' => 15, 'maxlength' => 50, "class" => "text")); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[numberOfGuest][]', '', array('size' => 15, 'maxlength' => 50, "class" => "text")); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo CHtml::textField('VoucherRoom[roomCategory][]', '', array('size' => 15, 'maxlength' => 50, "class" => "text")); ?>
                                                            </td>
                                                        </tr>
                                                        <?php }?>
                                                    </table>
                                                    <hr style="color: #CCC">
                                                    <input type="text" value="1" id="incrementer" size="3"> <button id="addmore">[+] Add More</button>
                                                </div><br><br>
                                                <!-- toral room end -->
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'paymentType'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'paymentType', array('size' => 60, 'maxlength' => 80, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'voucherIssuedBy'); ?>
                                                    <div class="inputs blank">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'voucherIssuedBy', array('size' => 60, 'maxlength' => 100, "class" => "text")); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">				
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'remarks'); ?>
                                                    <div class="inputs">
                                                        <span class="blank"><?php echo $form->textArea($model, 'remarks', array('rows' => 6, 'cols' => 50)); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>



                                    <div class="row">
                                        <div class="buttons">                                           
                                            <?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></span>
                                        </div>
                                    </div>
                                </div>
                                <!--[if !IE]>end forms<![endif]-->

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




<script>
    $("#addmore").click(function(event) {
        event.preventDefault();
        var guestName = $("#Voucher_guestName").val();
        var incrementer = $("#incrementer").val();
        for (var inn = 0; inn < Number(incrementer); inn++) {
            var nowtotalroom=$("#Voucher_totalRoom").val();
            var countt = 0;
            countt += Number(nowtotalroom) + 1;
            $("#Voucher_totalRoom").val(countt);
            var roomContent = "<tr><td><input type='text' id='VoucherRoom_roomNumber' name='VoucherRoom[roomNumber][]' value='Room " + countt + "' class='text' maxlength='50' size='15'></td><td><input type='text' class='guestName' id='VoucherRoom_guestName' name='VoucherRoom[guestName][]' value='" + guestName + "' class='text' maxlength='50' size='15'></td><td><input type='text' id='VoucherRoom_roomType' name='VoucherRoom[roomType][]' value='' class='text' maxlength='50' size='15'></td><td><input type='text' id='VoucherRoom_numberOfGuest' name='VoucherRoom[numberOfGuest][]' value='' class='text' maxlength='50' size='15'></td><td><input type='text' id='VoucherRoom_roomCategory' name='VoucherRoom[roomCategory][]' value='' class='text' maxlength='50' size='15'></td><td class='approw'>[X]</td></tr>";
            //$("#totalRoomsAppend").append(roomContent);
            $("#newaa").append(roomContent);
        }
    });
    
    $(".approw").live('click',function(event){
        event.preventDefault();
        $(this).parent().remove();
        var nowtotalroom=$("#Voucher_totalRoom").val();
        $("#Voucher_totalRoom").val(Number(nowtotalroom)-1);
    });
    
    $("#Voucher_guestName").keyup(function(){
        var guestName = $(this).val();
       $(".guestName").each(function(){
           $(this).val(guestName);
       }); 
    });
</script>
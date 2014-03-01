<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/DATETIME/datetimepicker_css.js"></script>
<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>Bill</h2>

        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('create') ?>" class="active"><span><span>Generate Bill</span></span></a></li>
            <li><a href="<?php echo $this->createUrl('admin') ?>" ><span><span>View Bill</span></span></a></li>
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
                                'id' => 'bill-form',
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

                                    <table style="width: 70%">
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'title'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'title', array('Mr.' => 'Mr.', 'Mrs.' => 'Mrs.'), array('size' => 1, 'maxlength' => 10, 'class' => 'text')); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'title'); ?></span>
                                                    </div>

                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'clinetName'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'clinetName', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'clinetName'); ?></span>
                                                    </div>

                                                </div>

                                                <?php if ($_GET['id'] != '') { ?>
                                                    <div class="row">
                                                        <div class="inputs">
                                                            <?php echo $form->hiddenField($model, 'billNo', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?>
                                                        </div>
                                                    </div>
                                                <?php } ?>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>

                                            </td>
                                            <td>

                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'noOfPerson'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'noOfPerson', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'noOfPerson'); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'arrivalDate'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'arrivalDate', array('size' => 60, 'maxlength' => 100, 'class' => 'text', 'value' => date("d-m-y", strtotime($model->arrivalDate)))); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'arrivalDate'); ?></span>

                                                    </div>
                                                    <span class="system"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images2/cal.png" onClick="javascript:NewCssCal('Bill_arrivalDate','ddmmyyyy')" style="cursor:pointer; vertical-align:bottom" width="26" height="24"/></span>

                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'natureOfPayment'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'natureOfPayment', array('Advanced' => 'Advanced', 'Full' => 'Full'), array('size' => 1, 'maxlength' => 10, 'class' => 'text')); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'natureOfPayment'); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'agencyCode'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'agencyCode', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'agencyCode'); ?></span>
                                                    </div>

                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'clientEmail'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'clientEmail', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'clientEmail'); ?></span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'staffCode'); ?>
                                                    <div class="inputs">
                                                        <span class="input_wrapper"><?php echo $form->textField($model, 'staffCode', array('size' => 60, 'maxlength' => 100, 'class' => 'text')); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'staffCode'); ?></span>
                                                    </div>

                                                </div>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td>
                                                <div class="row">
                                                    <?php echo $form->labelEx($model, 'currency'); ?>
                                                    <div class="input">
                                                        <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'currency', array('INR' => 'INR', 'USD' => 'USD', 'GBP' => 'GBP', 'EUR' => 'EUR'), array('size' => 1, 'maxlength' => 10, 'class' => 'text', 'options' => array($model->currency => array('selected' => 'selected')))); ?></span>
                                                        <span class="system negative"><?php echo $form->error($model, 'currency'); ?></span>
                                                    </div>

                                                </div>
                                            </td>
                                            <td></td>
                                        </tr>

                                    </table>

                                    <table style="width:77%">
                                        <tr>
                                            <th align="center" width="8%">S.No</th>
                                            <th align="left">Particulars</th>
                                            <th align="left">Service Type</th>
                                            <th align="left">Amount</th>
                                        </tr>
                                        <?php
                                        if ($_GET['id'] != '') {
                                            $allParticular = Billparticular::model()->findAll("billNo='" . $model->billNo . "'");
                                            $sn = 0;
                                            foreach ($allParticular as $vParticular) {
                                                $sn++;
                                                ?>
                                                <tr>
                                                    <td align="center" width="8%"><?php echo $sn; ?></td>
                                                    <td><input type="text" name="Bill[particular][]" value="<?php echo $vParticular->particular; ?>"></td>
                                                    <td><input type="text" name="Bill[serviceType][]" value="<?php echo $vParticular->serviceType; ?>"></td>
                                                    <td><input type="text" name="Bill[amount][]" class="amountGhor" value="<?php echo $vParticular->amount; ?>"></td>
                                                </tr>
                                                <?php
                                            }
                                        } else {
                                            ?>
                                            <tr>
                                                <td align="center">1</td>
                                                <td><input type="text" name="Bill[particular][]"></td>
                                                <td><input type="text" name="Bill[serviceType][]"></td>
                                                <td><input type="text" name="Bill[amount][]" class="amountGhor"></td>
                                            </tr> 
                                            <tr>
                                                <td align="center">2</td>
                                                <td><input type="text" name="Bill[particular][]"></td>
                                                <td><input type="text" name="Bill[serviceType][]"></td>
                                                <td><input type="text" name="Bill[amount][]" class="amountGhor"></td>
                                            </tr> 
                                            <tr>
                                                <td align="center">3</td>
                                                <td><input type="text" name="Bill[particular][]"></td>
                                                <td><input type="text" name="Bill[serviceType][]"></td>
                                                <td><input type="text" name="Bill[amount][]" class="amountGhor"></td>
                                            </tr> 
                                            <tr>
                                                <td align="center">4</td>
                                                <td><input type="text" name="Bill[particular][]"></td>
                                                <td><input type="text" name="Bill[serviceType][]"></td>
                                                <td><input type="text" name="Bill[amount][]" class="amountGhor"></td>
                                            </tr>
                                            <tr>
                                                <td align="center">5</td>
                                                <td><input type="text" name="Bill[particular][]"></td>
                                                <td><input type="text" name="Bill[serviceType][]"></td>
                                                <td><input type="text" name="Bill[amount][]" class="amountGhor"></td>
                                            </tr>
                                            <?php
                                        }
                                        ?>
                                    </table>


                                    <div id="moreRow" style="display: block; width: 77%;"></div>
                                    <input id="isno" value="5" style="display: none">

                                    <div style="width: 65%;text-align: left;"><button id="addMoreRow" value="Add More">Add More</button></div>

                                    <table style="width:74%">
                                        <tr>
                                            <td>Service Tax</td>
                                            <td>
                                                <span class="input_wrapper blank"><?php echo $form->dropDownList($model, 'taxType', array('1.236' => 'Hotel Only - 1.236%', '3.09' => 'Hotel + Transport + Guide - 3.09%', '4.80' => 'Guide + Transport (No Hotel) - 4.80%'), array('empty' => 'Select Tax Type'), array('size' => 1, 'maxlength' => 10, 'class' => 'text', 'options' => array($model->taxType => array('selected' => 'selected')))); ?></span>
                                            </td>
                                            <td><span class="input_wrapper"><?php echo $form->textField($model, 'serviceTax', array('size' => 60, 'maxlength' => 100, 'class' => 'text', 'readonly' => 'readonly')); ?></span></td>
                                        </tr>
                                        <tr>
                                            <td>Education Cess on S.T. - 2%</td>
                                            <td></td>
                                            <td><span class="input_wrapper"><?php echo $form->textField($model, 'educationOnST', array('size' => 60, 'maxlength' => 100, 'class' => 'text', 'readonly' => 'readonly')); ?></span></td>
                                        </tr>
                                        <tr>
                                            <td>SHE Cess on S.T. - 1%</td>
                                            <td></td>
                                            <td><span class="input_wrapper"><?php echo $form->textField($model, 'sheOnST', array('size' => 60, 'maxlength' => 100, 'class' => 'text', 'readonly' => 'readonly')); ?></span></td>
                                        </tr>
                                        <tr>
                                            <td>Grand Total</td>
                                            <td></td>
                                            <td><span class="input_wrapper"><?php echo $form->textField($model, 'grandTotal', array('size' => 60, 'maxlength' => 100, 'class' => 'text', 'readonly' => 'readonly')); ?></span></td>
                                        </tr>
                                    </table>







                                    <!--[if !IE]>start row<![endif]-->
                                    <div class="row">
                                        <div class="buttons">
                                            <ul>
                                                <li>
                                                    <span class="button send_form_btn"><span><span>
                                                                <?php
                                                                if ($model->isNewRecord) {
                                                                    echo 'Create';
                                                                } else {
                                                                    echo 'Update';
                                                                }
                                                                ?>
                                                            </span></span><?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></span>
                                                </li>
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
<script>
    $("#addMoreRow").click(function(){
        var sn = Number($("#isno").val()) + Number(1);
        $("#isno").val(sn);
        var row='<table style="width:100%"><tr><td align="center" width="8%">'+ sn +'</td><td><input type="text" name="Bill[particular][]" class="particular"></td><td><input type="text" name="Bill[serviceType][]" ></td><td><input type="text" name="Bill[amount][]"  class="amountGhor"></td></tr></table>';
        $("#moreRow").append(row);
        return false;
    });
    
    $("#Bill_taxType").live("change",function(){
        calGrandTotals();
    });
    
    $(".amountGhor").live("keyup",function(){
        calGrandTotals();
    });
    
    function calGrandTotals(){
        var taxType = $("#Bill_taxType").val();
        var amountTotal = 0;
       
        $(".amountGhor").each(function(){
            amountTotal += Number($(this).val());
        });
       
        var st = parseFloat(amountTotal*taxType/100).toFixed(2);
        var eduSt = parseFloat(st*2/100).toFixed(2);
        var sheSt = parseFloat(st*1/100).toFixed(2);
        var grandTotal = parseFloat(Number(amountTotal)+Number(st)+Number(eduSt)+Number(sheSt)).toFixed(2);
        $("#Bill_serviceTax").val(st);
        $("#Bill_educationOnST").val(eduSt);
        $("#Bill_sheOnST").val(sheSt);
        $("#Bill_grandTotal").val(grandTotal);
       
    }
    
</script>
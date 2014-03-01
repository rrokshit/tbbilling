<script src="<?php echo Yii::app()->theme->baseUrl; ?>/js/DATETIME/datetimepicker_css.js"></script>
<?php

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$.fn.yiiGridView.update('voucher-grid', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<div class="section">

    <?php if (isset($_GET['msg']) && $_GET['msg'] != '') { ?>
        <div class="msg"><?php echo $_GET['msg'] ?></div>
    <?php } ?>

    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">

        <h2>Voucher</h2>

        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('create') ?>" ><span><span>Generate Voucher</span></span></a></li>
            <li><a href="<?php echo $this->createUrl('admin') ?>" class="active"><span><span>View Voucher</span></span></a></li>
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

                            <form action="" method="get">
                            <table style="width: 50%; margin: auto;">
                                <tr>
                                    <td><label>From</label></td>
                                    <td><span class="input_wrapper"><input type="text" class="text dsmall" id="from_date" name="from_date" value="<?php echo date("d-m-Y"); ?>"/></span>
                                    <span class="system"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images2/cal.png" onClick="javascript:NewCssCal('from_date','ddmmyyyy')" style="cursor:pointer; vertical-align:bottom; float: right;" width="26" height="24"/></span></td>
                                
                                    <td>
                                        <label>To</label>
                                    </td>
                                    <td>
                                        <span class="input_wrapper"><input type="text" class="text dsmall" id="to_date" name="to_date" value="<?php echo date("d-m-Y"); ?>"/></span>
                                    <span class="system"><img src="<?php echo Yii::app()->theme->baseUrl; ?>/images2/cal.png" onClick="javascript:NewCssCal('to_date','ddmmyyyy')" 
                                                              style="cursor:pointer; vertical-align:bottom" width="26" height="24"/></span>
                                    </td>
                                    <td>
                                        <input type="submit" name="Search" value="Search">
                                    </td>
                                </tr>
                            </table>
                            </form>



                            <?php $this->widget('zii.widgets.grid.CGridView', array(
								'id'=>'voucher-grid',
								'dataProvider'=>$model->search()($_GET['from_date'],$_GET['to_date']),
								'filter'=>$model,
								'columns'=>array(
									'voucherId',
									'voucherNumber',
									'hotelName',
									'hotelAddress',
									'checkIn',
									'checkOut',
									/*
									'confirmationNumber',
									'guestName',
									'agencyCode',
									'mealPlan',
									'totalRoom',
									'paymentType',
									'remarks',
									'voucherIssuedBy',
									*/
									array(
										'class'=>'CButtonColumn',
									),
								),
							)); ?>
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

<style>
    .button-column{
        width:115px!important;
    }
</style>




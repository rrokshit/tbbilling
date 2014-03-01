<?php $this->layout = 'fullscreen'; ?>
<table width="100%">
        <tr>
            <td align="left">
               
                  <img src="http://localhost:8080<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.gif"/>
            </td>
            <td>
                <table align="right">
                    <tr>
                        <td align="right">Head Office:Near The Gateway Hotel<br/>
						(Formerly Hotel Taj View)<br/>
						Fatehabad Road, AGRA - 282001</td>
                    </tr>
                    <tr>
                        <td>Tel.: +91 - 0562 - 2330230, 2330245</td>
                    </tr>
                    <tr>
                        <td>Fax : +91 - 0562 - 2330206, 2331219</td>
                    </tr>
					<tr>
                        <td align="right">Email : travelbureau@airtelmall.in</td>
                    </tr>
					<tr>
                        <td align="right">www.travelbureauindia.com</td>
                    </tr>
                </table>
            </td>

        </tr>
    </table>
<!-- payment for HDFC -->
<?php
if ($model->status == 'Pending') {
    if ($_GET['fromPage'] == 'chkbill') {
        $trackId = explode("/", $model->billNo);
?>
        <form name="form" action="http://www.travelbureauindia.com/SendPerformREQuest.php" method="post">
            <table border="0" align="center" style="background-color: pink">
                <tr>
                    <td> <b>Transaction Amount: </b> <input type="text" name="MAmount" readonly="readonly" size="25" value="<?php echo $model->grandTotal; ?>"></td>
                    <td align="center"><input type="submit" value="SUBMIT" style="border-color:darkblue"></td>
                </tr>
                <tr>
                    <td style="display: none"> 
                        <input type="text" name="MTrackid" size="25" value="<?php echo $trackId[2] . $trackId[3] . $trackId[4]; ?>">
                        <input type="text" name="fullBillNo" size="25" value="<?php echo $model->billNo; ?>">
                        <input type="text" name="custName" size="25" value="<?php echo $model->title . ' ' . $model->clinetName; ?>">
                        <input type="text" name="billId" size="25" value="<?php echo $model->billId; ?>">
                    </td>

                </tr>
            </table>
        </form>

        <!-- end payment for HDFC -->
        <?php
    }
}
?>

<div style=" padding: 140px 5px 5px 5px;">

    <table width="100%">
        <tr>
            <td align="left" style="width:65%">
                <strong>TO,</strong><br> 
                <?php echo $model->clinetAddress; ?>
            </td>
            <td>
                <table>
                    <tr>
                        <td>Bill No: </td>
                        <td><?php echo $model->billNo; ?></td>
                    </tr>
                    <tr>
                        <td>Date:</td>
                        <td><?php echo date("d-m-Y"); ?></td>
                    </tr>
                    <tr>
                        <td>Staff Code: </td>
                        <td><?php echo $model->staffCode; ?></td>
                    </tr>
                </table>
            </td>

        </tr>
    </table>

    <br><hr><br>

    <table style="width: 100%">
        <tr>
            <td align="center"><span style="border: 2px solid #000; padding: 3px;">&nbsp;Name of Client: <?php echo $model->title . ' ' . $model->clinetName; ?>&nbsp;<span></td>
                        </tr>
                        </table>

                        <br><br>

                        <table>

                            <tr>
                                <td>No Of Persons: </td>
                                <td><?php echo $model->noOfPerson; ?></td>
                            </tr>
                            <tr>
                                <td>Agency Reference Code: </td>
                                <td><?php echo $model->agencyCode; ?></td>
                            </tr>
                            <tr>
                                <td>Currency: </td>
                                <td><?php echo $model->currency; ?></td>
                            </tr>
                        </table>
                        <br><br>
                        
                        <div style="height: 320px; overflow: hidden;">
                        <table width="100%" style="border-collapse: collapse; border: 1px solid #000;" border="1" cellpadding="2">
                            <tr>
                                <th align="center">S.no</th>
                                <th align="center">Particulars</th>
                                <th align="center">Service Type</th>
                                <th align="center">Amount (<?php echo $model->currency; ?>)</th>
                            </tr>
                            <?php
                            $allParticular = Billparticular::model()->findAll("billNo='" . $model->billNo . "'");
                            $sl = 0;
                            $tamount = 0;
                            foreach ($allParticular as $vParticular) {
                                $sl++;
                                $tamount += $vParticular->amount;
                                ?>
                                <tr>
                                    <td align="center"><?php echo $sl; ?></td>
                                    <td align="center"><?php echo $vParticular->particular; ?></td>
                                    <td align="center"><?php echo $vParticular->serviceType; ?></td>
                                    <td align="center">
                                        <?php echo number_format($vParticular->amount, 2); ?>
                                    </td>
                                </tr>
                                <?php
                            }
                            ?>
                            <tr>
                                <td colspan="3" align="right">Total:</td>
                                <td align="center"><?php echo number_format($tamount, 2); ?></td>
                            </tr>
                            <?php if ($model->taxType != 0) { ?>
                                <tr>
                                    <td colspan="3" align="right">Service Tax @ <?php echo $model->taxType; ?>% :</td>
                                    <td align="center"><?php echo number_format($model->serviceTax, 2); ?></td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="right">Edu. Cess on Service	Tax @ 2.00% :</td>
                                    <td align="center"><?php echo number_format($model->educationOnST, 2); ?></td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="right">S.H.E	Cess on Service	Tax @ 1.00% :</td>
                                    <td align="center"><?php echo number_format($model->sheOnST, 2); ?></td>
                                </tr>
                            <?php } else { ?>
                                <tr>
                                    <td colspan="3" align="right">Service Tax:</td>
                                    <td align="center">NIL</td>
                                </tr>
                            <?php } ?>
                            <tr style="background-color: graytext; font-weight: bold">
                                <td colspan="3" align="right">Grand Total :</td>
                                <td align="center">
                                    <?php
                                    $grand = number_format($model->grandTotal, 2);
                                    echo $grand;
                                    $word = str_replace(',', '', $grand);
                                    $word = explode('.', $word)
                                    ?>
                                </td>
                            </tr>
                        </table>
                        <br>
                        <div style="width: 100%; text-transform: uppercase; text-align: right;">
                            <strong>Rupees In Word:</strong> 
                            <?php echo Bill::model()->int_to_words($word[0]); ?> Rupees
                            <?php if ($word[1] > 0) { ?>
                                <?php echo Bill::model()->int_to_words($word[1]); ?> Paisa
                            <?php } ?>
                        </div>
                        </div>
                        <hr>
                        Date of arrival: <?php echo date("d-m-Y", strtotime($model->arrivalDate)); ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Ex Voucher No.: <?php echo $model->voucherNo; ?>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        Tour Ref. No.: <?php echo $model->RefNo; ?>

                        <br>
                        <br>
                        <table>
                            <tr>
                                <td>Bank Name</td>
                                <td>:</td>
                                <td>HDFC BANK LTD. Sanjay Place, Agra</td>
                            </tr>
                            <tr>
                                <td>A/C Name</td>
                                <td>:</td>
                                <td>Travel Bureau</td>
                            </tr>
                            <tr>
                                <td>A/C No.</td>
                                <td>:</td>
                                <td>01212320000549</td>
                            </tr>
                            <tr>
                                <td>RTGS/IFSC Code</td>
                                <td>:</td>
                                <td>HDFC0000121</td>
                            </tr>
                        </table>

                        <div style="width: 100%; text-align: right;">[Accountant]</div>

                        <div style="font-weight: bold; border-top: 1px solid black; border-bottom: 1px solid black; padding: 3px 0px 3px 0px;">
                            PAN NUMBER: ABPPG1076N
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            SERVICE TAX REGISTRATION NO.: ABPPG1076NSD001
                        </div>

                        <div style="width: 100%; text-align: center;">PLEASE SEND PAYMENT TO AGRA HEAD OFFICE ONLY</div>


                        </div>
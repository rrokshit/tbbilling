<?php $this->layout='fullscreen';?>

<div style="border: 5px solid #00CC00; padding: 5px;">

<table width="100%">
    <tr>
        <td align="right"><img src="<?php echo Yii::app()->request->baseurl;?>/company_img/<?php echo Company::model()->findByPk(1)->img;?>"/></td>
    </tr>
</table>

<table width="100%">
    <tr>
        <td>
            <table>
                <tr>
                    <td>Bill No: </td>
                    <td><?php echo $model->billNo;?></td>
                </tr>
                <tr>
                    <td>Date:</td>
                    <td><?php echo date("d-m-Y");?></td>
                </tr>
                <tr>
                    <td>Staff Code: </td>
                    <td><?php echo $model->staffCode;?></td>
                </tr>
            </table>
        </td>
        <td align="right">
            <h2>Travel	Bureau,</h2><br>
            Next to Hotel Gateway,<br>Fatehabad Road,<br>Agra 282001<br>Web: www.travelbureauindia.com
        </td>
    </tr>
</table>

<br><hr><br>

<table style="width: 100%">
    <tr>
       <td align="center"><span style="border: 2px solid #000; padding: 3px;">Name of Client: <?php echo $model->title.' '.$model->clinetName;?><span></td>
    </tr>
</table>

<br><br>

<table>
    <tr>
        <td>Date of Arrival: </td>
        <td><?php echo date("d-m-Y",strtotime($model->arrivalDate));?></td>
    </tr>
    <tr>
        <td>No Of Persons: </td>
        <td><?php echo $model->noOfPerson;?></td>
    </tr>
    <tr>
        <td>Agency Reference Code: </td>
        <td><?php echo $model->agencyCode;?></td>
    </tr>
    <tr>
        <td>Currency: </td>
        <td><?php echo $model->currency;?></td>
    </tr>
</table>
<br><br>
<table width="100%" style="border-collapse: collapse; border: 1px solid #000;" border="1" cellpadding="2">
    <tr>
        <th align="center">S.no</th>
        <th align="center">Particulars</th>
        <th align="center">Service Type</th>
        <th align="center">Amount (<?php echo $model->currency;?>)</th>
    </tr>
    <?php
    $allParticular = Billparticular::model()->findAll("billNo='".$model->billNo."'");
        $sl=0;
        $tamount=0;
        foreach($allParticular as $vParticular){
            $sl++;
            $tamount += $vParticular->amount;
        ?>
        <tr>
            <td align="center"><?php echo $sl;?></td>
            <td align="center"><?php echo $vParticular->particular;?></td>
            <td align="center"><?php echo $vParticular->serviceType;?></td>
            <td align="center"><?php echo number_format($vParticular->amount,2);?></td>
        </tr>
    <?php
        }
        ?>
        <tr>
            <td colspan="3" align="right">Total:</td>
            <td align="center"><?php echo number_format($tamount,2);?></td>
        </tr>
        <tr>
            <td colspan="3" align="right">Service Tax @ <?php echo $model->taxType;?>% :</td>
            <td align="center"><?php echo number_format($model->serviceTax,2);?></td>
        </tr>
        <tr>
            <td colspan="3" align="right">Edu. Cess on Service	Tax @ 2.00% :</td>
            <td align="center"><?php echo number_format($model->educationOnST,2);?></td>
        </tr>
        <tr>
            <td colspan="3" align="right">S.H.E	Cess on Service	Tax @ 1.00% :</td>
            <td align="center"><?php echo number_format($model->sheOnST,2);?></td>
        </tr>
        <tr style="background-color: graytext; font-weight: bold">
            <td colspan="3" align="right">Grand Total :</td>
            <td align="center"><?php echo number_format($model->grandTotal,2);?></td>
        </tr>
</table>
<br><br>
<?php if(Yii::app()->user->isGuest){?>

<table>
    <tr>
        <td align="left">
            <h2>Terms	and	Conditions:</h2>
            1.  This	is	NOT	a	service	/	hotel	voucher.	We	will	issue	a	separate	service	and	hotel	vouchers	according	to	the	nature	
of	booking	made.<br>
2.  Please	reconfirm	dates	of	Travel	/	Sector	/	Spelling	of	Names	/	Gender	/	Age	for	all	your	bookings.<br>
3.  Taxes	levied	are	as	per	the	guidelines	and	tax	structure	as	laid	down	by	the	Central	/	State	Government.<br>
4.  Please	take	special	note	of	NON	–	REFUNDABLE	fares	and	hotel	reservations.<br>
5.  There	shall	be	no	refund	under	circumstances	covered	under	Force	Majeure.<br>
6.  There	shall	be	no	refund	in	hotel	accommodation	due	to	unforeseen	flight	cancellation	or	overfly	and	such	matters	
will	be	addressed	by	the	Airline	Operator<br><br>
        </td>
    </tr>
    <tr>
        <td align="center" style="font-size: 13px;">
            <hr>
            <br><br>- PAYMENT BY CREDIT CARD WILL ATTRACT AN ADDITIONAL	1.2% BANK CHARGE ON FINAL BILL AMOUNT -<br>
Thank	you	for	choosing	to	travel	with	Travel	Bureau,	India
Email	:	-	agra.tb@gmail.com	|	Office	Phone	-	+91	562	2331118
        </td>
    </tr>
</table>

<?php
if($_GET['fromPage']=='chkbill'){
    echo "<br><br>";
    echo "<button>Make Payment</button>";
    echo "<a href='".Yii::app()->request->baseurl.'/index.php/bill/pdf/'.$model->billId."' target='_blank'><button>Save PDF</button></a>";
    echo "<button>Contant Us</button>";
}
?>


<?php }else{?>
<table style="border-collapse: collapse; border-width: 1px; border-color: black; width: 50%" border="1">
    <tr>
        <td width="30%">For Manual Filling (Offline):</td>
        <td colspan="2" width="200px"></td>
    </tr>
    <tr>
        <td>Vouchers Issued:</td>
        <td align="center">Yes</td>
        <td align="center">No</td>
    </tr>
    
    <tr>
        <td>Reconfirmation Status:</td>
        <td align="center">Yes</td>
        <td align="center">No</td>
    </tr>
    
    <tr>
        <td>Sent to Client:</td>
        <td align="center">Yes</td>
        <td align="center">No</td>
    </tr>
    
    <tr>
        <td>Bill Paid:</td>
        <td align="center">Yes</td>
        <td align="center">No</td>
    </tr>
    <tr>
        <td>Staff Signature:</td>
        <td colspan="2" width="200px"></td>
    </tr>
</table>
<table width="100%">
    <tr>
        <td>Date: </td>
        <td align="right">Accounts (Checked)<br>Year -2013-14</td>
    </tr>
</table>
<?php }?>


</div>
    
<?php $this->layout = 'fullscreen';?>
<html>
    <head>
        <title>Meal Voucher View</title>
    </head>
    <body>
        <table style="width: 100%">
            <tr>
                <td style="text-align: left">
                    <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/logo.gif"/>
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
        
        <br>
        <p>
        <h2 style="width: 100%; text-align: center; text-decoration: underline;">Meal Voucher Deails</h2>
        </p>
        <br>
        
        <table style="width: 100%">
            <tr>
                <th>Voucher Code:</th>
                <td><?php echo $model->voucherCode?></td>
                <th>Date:</th>
                <td><?php echo date("d-m-Y",strtotime($model->date))?></td>
            </tr>
            <tr>
                <th>Agency Name:</th>
                <td><?php echo $model->agencyName?></td>
                <th>Group Name:</th>
                <td><?php echo $model->groupFitName?></td>
            </tr>
            <tr>
                <th>Number Of Person:</th>
                <td><?php echo $model->numberOfPerson?></td>
                <th>Hotel / Restaurant:</th>
                <td><?php echo $model->hotelRestaurant?></td>
            </tr>
            <tr>
                <th>Meal:</th>
                <td><?php echo $model->meal?></td>
            </tr>
        </table>
    </body>
</html>

<style>
    th{text-align: right; padding-right: 20px;}
</style>

                                                                            <?php $this->layout = 'fullscreen';?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Voucher View</title>
    </head>

    <body>
        <table width="100%">
            <tr>
                <td align="left">

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
        <div style=" padding: 140px 5px 5px 5px;">
            <hr><br>

                    <table style="width: 100%">
                        <tr>
                            <td align="center"><span style="border: 2px solid #000; padding: 3px;">Hotel Voucher - <?php echo $model->hotelName;?>&nbsp;&nbsp;&nbsp;<?php echo date("d-m-Y",strtotime($model->checkIn));?>&nbsp;&nbsp;&nbsp;<?php echo date("d-m-Y",strtotime($model->checkOut));?></span></td>
                                        </tr>
                                        </table>

                                        <br><br>
                                                <div style="font-weight: bold; border-top: 1px solid black; border-bottom: 1px solid black; padding: 3px 0px 3px 0px;">
                                                    HOTEL NAME : <?php echo $model->hotelName;?>
                                                </div>
                                                <br />
                                                <table>

                                                    <tr>
                                                        <td>Address:</td>
                                                        <td><?php echo $model->hotelAddress?></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Voucher ID:</td>
                                                        <td><?php echo $model->voucherNumber?></td>

                                                    </tr>
                                                    <tr>
                                                        <td>Contact No:</td>
                                                        <td><?php echo $model->hotelContact;?></td>

                                                    </tr>
                                                </table>
                                                <br>
                                                    <div style="font-weight: bold; border-top: 1px solid black; border-bottom: 1px solid black; padding: 3px 0px 3px 0px;">
                                                        Hotel Booking Detail
                                                    </div>
                                                    <br />
                                                    <table>
                                                        <tr>
                                                            <td>Guest Name :</td>
                                                            <td><?php echo $model->guestName?></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Total Rooms :</td>
                                                            <td><?php echo $model->totalRoom?></td>
                                                        </tr>
                                                        <tr>
                                                            <td>Check In Date :</td>
                                                            <td><?php echo date("d-m-Y",strtotime($model->checkIn));?></td>
                                                        </tr>
                                                        <tr>
                                                            <td>No of Guests :</td>
                                                            <td></td>
                                                        </tr>
                                                    </table>
                                                    <br><br>

                                                            
                                                                <table width="100%" style="border-collapse: collapse; border: 1px solid #000;" border="1" cellpadding="2">
                                                                    <tr>
                                                                        <th align="center">Room</th>
                                                                        <th align="left">Guest Name</th>
                                                                        <th align="center">Room Type</th>
                                                                        <th align="center">Room Category</th>
                                                                        <th align="center">No of Adults</th>
                                                                        <th align="center">Meal Plan</th>
                                                                    </tr>
                                                                    <?php 
                                                                    $voucherRooms = VoucherRoom::model()->findAll("voucherid='".$model->voucherId."'");
                                                                    foreach($voucherRooms as $voucherRoom):
                                                                    ?>
                                                                    <tr>
                                                                        <td align="center"><?php echo $voucherRoom->roomNumber?></td>
                                                                        <td align="left"><?php echo $voucherRoom->guestName?></td>
                                                                        <td align="center"><?php echo $voucherRoom->roomType?></td>
                                                                        <td align="center"><?php echo $voucherRoom->numberOfGuest?></td>
                                                                        <td align="center"><?php echo $voucherRoom->roomCategory?></td>
                                                                        <td align="center"><?php echo $model->mealPlan;?></td>
                                                                    </tr>
                                                                    <?php                                                                                                                           endforeach;
                                                                    ?>
                                                                    
                                                                </table>
                                                                <br>
                                                            					
                                                                <br>
                                                                    <table>
                                                                        <tr>
                                                                            <td>Voucher issued by</td>
                                                                            <td>:</td>
                                                                            <td><?php echo $model->voucherIssuedBy?></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Reconfirmation </td>
                                                                            <td>:</td>
                                                                            <td>By Person</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>Inclusion & Extras</td>
                                                                            <td>:</td>
                                                                            <td>
                                                                                <?php
                                                                                if($model->mealPlan=='EPAI'){
                                                                                    echo 'Room Only and taxes';
                                                                                }else if($model->mealPlan=='CPAI'){
                                                                                    echo 'Breakfast and taxes';
                                                                                }else if($model->mealPlan=='MAPAI'){
                                                                                    echo 'Breakfast and Lunch / Dinner and taxes';
                                                                                }else if($model->mealPlan=='APAI'){
                                                                                    echo 'All meals and taxes';
                                                                                }
                                                                                ?>
                                                                                
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <strong><td>Special Requests and Remarks:e</td>
                                                                                <td>:</td></strong>
                                                                            <td>Requirments</td>
                                                                        </tr>
                                                                    </table>					

                                                                    <br/>
                                                                    <br/>
                                                                    <br/>
                                                                    <br/>

                                                                    <div style="width: 100%; text-align: center;">Computer generated voucher, does not signature</div>
                                                                    <div style="width: 100%; text-align: center;">Please refer to Page 2 for booking information and cancellation policy.</div>
                                                                    <br/>
                                                                    <br/>
                                                                    <br/>
                                                                    <br/>
                                                                    <div>
                                                                        <div style="font-weight: bold; border-top: 1px solid black; border-bottom: 1px solid black; padding: 3px 0px 3px 0px;">
                                                                            Additional Information
                                                                        </div>
                                                                        <br />
                                                                        <strong>Hotel booking policy</strong>
                                                                        <p>Your hotel has laid down some rules, and it is our job to let you know what they are.</p>
                                                                        <ul>
                                                                            <li>The primary guest must be at least 18 years old to be able to check into this hotel.</li>
                                                                            <li>Standard check-in time and Check-out time may vary from hotel to hotel. Please refer to Hotel Booking Details section to know the exact Check-in and Check-out times. Early check-in or late check-out is subject to availability and the hotel might charge you extra for it.</li>
                                                                            <li>Your stay does not include additional expenses of personal nature such as Telephone charges, meals that are not covered under Inclusions in this voucher, laundry, room service or any other amentities/services not covered above under inclusions section. Hotel will charge you directly for all additional expenses at the time of check-out or during stay as applicable.</li>
                                                                            <li>On specific occasions (festivals), certain hotels might charge supplementary charges for X'Mas / New Year Gala Dinner which is compulsory. These charges if any have to be paid directly at the hotel by the guest during the stay. For any assistance in this regard, please email to the Agency.</li>
                                                                            <li>All hotels require you to furnish a valid photo-id proof at the time of check-in. Documents that you can carry as id proofs include PAN card, driving license, passport or voter's ID card. It is mandatory to produce any one of photo-id proof at the time of check-in to avoid inconvenience.</li>
                                                                        </ul>
                                                                        <br />
                                                                        <strong>Cancellation Policy</strong>
                                                                        <hr />
                                                                        <ul>
                                                                            <li>Don't call the hotel directly for cancellations. The hotels agents cannot process the cancellation request for these specially negotiated rates.</li>
                                                                            <li>If you don't show up at the hotel, you'll still be charged the entire amount.</li>
                                                                        </ul>
                                                                        <br />
                                                                        <strong>No Show</strong>
                                                                        <hr />
                                                                        <ul>
                                                                            <li>Don't call the hotel directly for cancellations. The hotels agents cannot process the cancellation request for these specially negotiated rates.</li>
                                                                        </ul>
                                                                        <br/>
                                                                        <strong>Amendments</strong>
                                                                        <hr />
                                                                        <ul>
                                                                            <li>In case of any amendments, please contact the agency. Please note that Online Amendments are not supported.</li>
                                                                            <li>All the amendments should be received 48 hours prior to the date of check-in.</li>
                                                                            <li>It is advisable not to call the hotel directly for any amendments. The hotels agents cannot process the request for amendments for these specially-negotiated rates.</li>
                                                                        </ul>
                                                                        <br/>
                                                                        <strong>Refunds</strong>
                                                                        <hr />
                                                                        <ul>
                                                                            <li>We take at least 14 working days to process refunds for bookings cancelled in case of credit cards.</li>
                                                                            <li>Refunds will be processed only after deducting the necessary agency Cancellation Charges in addition to hotel retention charges.</li>
                                                                            <li><strong>BOOKINGS ARE NON REFUNDABLE within 48 hours of check in Date.</strong></li>
                                                                            <li><strong>NON Refundable bookings are indicated and are non refundable after being booked, please contact agency for per case details.</strong></li>

                                                                        </ul>

                                                                    </div>
                                                                    </div>



                                                                    </body>
                                                                    </html>




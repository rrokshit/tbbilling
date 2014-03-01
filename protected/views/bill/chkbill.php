<?php $this->layout='fullscreen';?>
<form action="<?php echo Yii::app()->request->baseurl;?>/index.php/bill/chkbill" method="post">
<table style="width: 25%; margin: auto;">
    <tr>
        <td align="center" colspan="2"><img src="<?php echo Yii::app()->request->baseurl;?>/company_img/<?php echo Company::model()->findByPk(1)->img;?>"/></td>
    </tr>
    <tr><td colspan="2"></td></tr>
    <tr>
        <td>Enter Your Bill No.</td>
        <td><input type="text" name="bill"></td>
    </tr>
    <tr>
        <td>Enter Your Email</td>
        <td><input type="text" name="email"></td>
    </tr>
    <tr>
        <td><?php echo $rand1 = rand(1,5);?> + <?php echo $rand2 = rand(5,10);?> = ?</td>
        <td>
            <input type="hidden" name="captchaResult" value="<?php echo $rand1+$rand2;?>">
            <input type="text" name="captcha">
        </td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" name="submit" value="Show Bill"></td>
    </tr>
    <tr>
        <td colspan="2" style="color: red">
            <?php echo $_GET['msg'];?>
        </td>
    </tr>
</table>
</form>

<table width="100%">
    	<tr>
            <td width="30%">
                <?php 
                    $company_id = Yii::app()->user->companyId;
                    $command = Yii::app()->db->createCommand();
                    $logo = $command->select("*")->from("company_logo_address")->where("company_id='".$company_id."'")->queryAll();
                ?>
                <img src="<?php echo Yii::app()->theme->baseUrl; ?>/images/companyLogo/<?php echo $logo[0]['logo']; ?>" width="250" height="70" />
            </td>
            <td width="70%" style="text-align:center; vertical-align:top">
                <font style="font-size:24px"><?php echo $logo[0]['company_name']; ?></font><br />
                <font> <?php echo $logo[0]['company_address']; ?><br /><?php echo $logo[0]['optional']; ?> </font>
            </td>
    	</tr>
    </table>
<div style="clear:both"></div>
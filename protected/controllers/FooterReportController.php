<table width="960px">
    <tr>
      <td style="border:1px solid #FFF;">
        <?php
        $command = Yii::app()->db->createCommand();
        $signature = $command->select("*")->from("signatory_info")->where("company_id='".$company_id."' and position='Left' and type='Others'")->queryAll();
        echo $signature[0]['signature_label']; 
        ?>
      </td>
      <td style=" text-align:center;border:1px solid #FFF;">
        <?php
        $command = Yii::app()->db->createCommand();
        $signature = $command->select("*")->from("signatory_info")->where("company_id='".$company_id."' and position='Middle' and type='Others'")->queryAll();
        echo $signature[0]['signature_label']; 
        ?>
      </td>
      <td style="text-align:right; border:1px solid #FFF;">
        <?php
        $command = Yii::app()->db->createCommand();
        $signature = $command->select("*")->from("signatory_info")->where("company_id='".$company_id."' and position='Right' and type='Others'")->queryAll();
        echo $signature[0]['signature_label']; 
        ?>
      </td>
    </tr>
</table>
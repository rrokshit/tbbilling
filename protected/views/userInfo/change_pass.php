<h1>CHANGE PASSWORD</h1>

<?php if(Yii::app()->user->hasFlash('success')):?>
    <div class="flash-success" style="margin-top:15px;">
        <?php echo Yii::app()->user->getFlash('success'); ?>
    </div>
    <?php
    Yii::app()->clientScript->registerScript(
       'myHideEffect',
       '$(".flash-success").animate({opacity: 1.0}, 3000).fadeOut("slow");',
       CClientScript::POS_READY
    );
	?>
<?php endif; ?>

<?php if(Yii::app()->user->hasFlash('error')):?>  
    <div class="flash-error" style="margin-top:15px;">
        <?php echo Yii::app()->user->getFlash('error'); ?>
    </div>  
    <?php
    Yii::app()->clientScript->registerScript(
       'myHideEffect',
       '$(".flash-error").animate({opacity: 1.0}, 3000).fadeOut("slow");',
       CClientScript::POS_READY
    );
	?>
<?php endif; ?>
 
<form style="margin-left:-5px" id="user-info-form" method="post" action="<?php echo Yii::app()->request->baseUrl;?>/index.php/userInfo/act_change_pass">
<table>
<tr>
	<td>
        <label>Current Password </label><br />
        <input type="password" id="current_pass" name="current_pass" class="text large" />
    </td>
</tr>
<tr>
	<td>
        <label>New Password </label><br />
        <input type="password" id="new_pass" name="new_pass" class="text large" />
    </td>
</tr>
<tr>
	<td>
        <label>Confirm New Password </label><br />
        <input type="password" id="con_new_pass" name="con_new_pass" class="text large" />
    </td>
</tr>
<tr>
    <td><input type="submit" class="submit" id="add" value="Save Changes" /></td>
</tr>
</table>
</form>

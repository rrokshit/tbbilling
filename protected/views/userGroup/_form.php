<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>User Groups</h2>
        
        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('index')?>"><span><span>List Groups</span></span></a></li>
            
            <li><a href="<?php echo $this->createUrl('create')?>" class="active"><span><span>Create Groups</span></span></a></li>
            
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
                            <?php $form=$this->beginWidget('CActiveForm', array(
								'id'=>'user-group-form',
								'htmlOptions'=>array('class'=>'search_form general_form'),
								'enableAjaxValidation'=>false,
							)); ?>
                                <!--[if !IE]>start fieldset<![endif]-->
                                <fieldset>
                                    <!--[if !IE]>start forms<![endif]-->
                                    <div class="forms">
                                    
                                    <!--[if !IE]>start system messages<![endif]-->
                                    <ul class="system_messages">
                                        
                                        <li class="white"><span class="ico"></span><strong class="system_title">Fields with <span class="required">*</span> are required.</li>
                                        
                                    </ul>
                                    <!--[if !IE]>end system messages<![endif]-->
                                    
                                    
                                    <div class="row">
										<?php echo $form->labelEx($model,'group_name'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'group_name',array('size'=>60,'maxlength'=>100,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'group_name'); ?></span>
                                        </div>
                                        
                                    </div>
                                
                                    <div class="row">
                                        <?php echo $form->labelEx($model,'status'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper blank"><?php echo $form->dropDownList($model,'status',array('ACTIVE'=>'Active','INACTIVE'=>'Inactive'),array('size'=>1,'maxlength'=>10,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'status'); ?></span>
                                        </div>
                                       
                                    </div>
                                
                                    
                                    
                                    <div class="row">
									<?php echo $form->labelEx($model,'menu_permission'); ?>
                                    <div class="inputs">
                                    	<span class="input_wrapper blank">
                                    <?php
                                            $command = Yii::app()->db->createCommand();
											$total_check = $command->select("menu_permission")->from("user_group")->where("id='".Yii::app()->user->userType."'")->queryAll();	
											
											if($_GET['id'] > 0)
											{
												$command = Yii::app()->db->createCommand();
                                           		$menu_itemU = $command->select("menu_permission")->from("user_group")->where("id='".$_GET['id']."'")->queryAll();
												$menu_listU = explode(",",$menu_itemU[0]['menu_permission']);
												
												$command = Yii::app()->db->createCommand();
												$menu_item = $command->select("menu_permission")->from("user_group")->where("id='".Yii::app()->user->userType."'")->queryAll();	
											
											}
											else
											{
												$command = Yii::app()->db->createCommand();
                                            	$menu_item = $command->select("menu_permission")->from("user_group")->where("id='".Yii::app()->user->userType."'")->queryAll();	
											}
											
                                            $menu_list = explode(",",$menu_item[0]['menu_permission']);
                                            
                                            $command = Yii::app()->db->createCommand();
                                            $menu_item = $command->select("id,name")->from("menu_item")->where("parent='0' order by ordering")->queryAll();
                                            
											if($_GET['id'] > 0)
											{
											
												if(Yii::app()->user->userType!=1)
												{
													//start without superadmin
													for($i=0; $i< sizeof($menu_item); $i++) 
													{
														if(in_array($menu_item[$i][id],$menu_list))
														{
														?>
														<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item[$i][id];?>' <?php if(in_array($menu_item[$i][id],$menu_listU)){echo "checked='checked'";}?>/><?php echo $menu_item[$i][name];?><br>
														<?php
														$command = Yii::app()->db->createCommand();
														$menu_item_child = $command->select("id,name")->from("menu_item")->where("parent='".$menu_item[$i][id]."' order by ordering")->queryAll();
														
														
														
															for($j=0; $j<sizeof($menu_item_child); $j++)
															{
																if(in_array($menu_item_child[$j][id],$menu_list))
																{
																?>
																----<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item_child[$j][id];?>' <?php if(in_array($menu_item_child[$j][id],$menu_listU)){echo "checked='checked'";}?>/><?php echo $menu_item_child[$j][name];?><br>
																<?php
																	if($_GET['id']>0)
																	{
																	$checkcheck = MenuAction::model()->findAll("menu_id='".$menu_item_child[$j][id]."' and type_id='".$_GET['id']."'");
																		if(sizeof($checkcheck) > 0)
																		{
																			foreach($checkcheck as $checkNow)
																			{
																				if($checkNow->action == 'create')
																					$createS = "checked='checked'";
																				if($checkNow->action == 'update')
																					$updateS = "checked='checked'";
																				if($checkNow->action == 'delete')
																					$deleteS = "checked='checked'";
																				if($checkNow->action == 'approvedVoucher')
																					$approvedVoucherS = "checked='checked'";
																			}
																		}
																	}
																?>
																	--------<input type='checkbox' name='create[]' value='<?php echo $menu_item_child[$j][id];?>' <?php echo $createS?>/>Create   <input type='checkbox' name='update[]' value='<?php echo $menu_item_child[$j][id];?>' <?php echo $updateS?>/>Update <input type='checkbox' name='delete[]' value='<?php echo $menu_item_child[$j][id];?>' <?php echo $deleteS?>/>Delete
																	<?php if($menu_item_child[$j][id]=='13'){?>
																	<input type='checkbox' name='approvedVoucher' value='13' <?php echo $approvedVoucherS?>/>Approved Voucher
																	<?php }?>
																	
																	<br><br>
																<?php
																}
																	$createS='';
																	$updateS='';
																	$deleteS='';
																	$approvedVoucherS='';
															}
														}
														
													}
													//end without super admin
												}
												else
												{
													//start with superadmin
													for($i=0; $i< sizeof($menu_item); $i++) 
													{
														?>
														<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item[$i][id];?>' <?php if(in_array($menu_item[$i][id],$menu_listU)){echo "checked='checked'";}?>/><?php echo $menu_item[$i][name];?><br>
														<?php
														$command = Yii::app()->db->createCommand();
														$menu_item_child = $command->select("id,name")->from("menu_item")->where("parent='".$menu_item[$i][id]."' order by ordering")->queryAll();
														
														
														
															for($j=0; $j<sizeof($menu_item_child); $j++)
															{
																?>
																----<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item_child[$j][id];?>' <?php if(in_array($menu_item_child[$j][id],$menu_listU)){echo "checked='checked'";}?>/><?php echo $menu_item_child[$j][name];?><br>
																<?php
																	if($_GET['id']>0)
																	{
																	$checkcheck = MenuAction::model()->findAll("menu_id='".$menu_item_child[$j][id]."' and type_id='".$_GET['id']."'");
																	foreach($checkcheck as $checkNow)
																	{
																		if($checkNow->action == 'create')
																			$createS = "checked='checked'";
																		if($checkNow->action == 'update')
																			$updateS = "checked='checked'";
																		if($checkNow->action == 'delete')
																			$deleteS = "checked='checked'";
																		if($checkNow->action == 'approvedVoucher')
																			$approvedVoucherS = "checked='checked'";
																	}
																	}
																?>
																	--------<input type='checkbox' name='create[]' value='<?php echo $menu_item_child[$j][id];?>' <?php echo $createS?>/>Create   <input type='checkbox' name='update[]' value='<?php echo $menu_item_child[$j][id];?>' <?php echo $updateS?>/>Update <input type='checkbox' name='delete[]' value='<?php echo $menu_item_child[$j][id];?>' <?php echo $deleteS?>/>Delete
																	<?php if($menu_item_child[$j][id]=='13'){?>
																	<input type='checkbox' name='approvedVoucher' value='13' <?php echo $approvedVoucherS?>/>Approved Voucher
																	<?php }?>
																	
																	<br><br>
																<?php
																	$createS='';
																	$updateS='';
																	$deleteS='';
																	$approvedVoucherS='';
															}
														
														
													}
													//end with super admin
												}
											}//end update
											else
											{
												if(Yii::app()->user->userType!=1)
												{
													//start without superadmin
													for($i=0; $i< sizeof($menu_item); $i++) 
													{
														if(in_array($menu_item[$i][id],$menu_list))
														{
														?>
														<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item[$i][id];?>' /><?php echo $menu_item[$i][name];?><br>
														<?php
														$command = Yii::app()->db->createCommand();
														$menu_item_child = $command->select("id,name")->from("menu_item")->where("parent='".$menu_item[$i][id]."' order by ordering")->queryAll();
														
														
														
															for($j=0; $j<sizeof($menu_item_child); $j++)
															{
																if(in_array($menu_item_child[$j][id],$menu_list))
																{
																?>
																----<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item_child[$j][id];?>' /><?php echo $menu_item_child[$j][name];?><br>
																
																	--------<input type='checkbox' name='create[]' value='<?php echo $menu_item_child[$j][id];?>'/>Create   <input type='checkbox' name='update[]' value='<?php echo $menu_item_child[$j][id];?>' />Update <input type='checkbox' name='delete[]' value='<?php echo $menu_item_child[$j][id];?>' />Delete
																	<?php if($menu_item_child[$j][id]=='13'){?>
																	<input type='checkbox' name='approvedVoucher' value='13' />Approved Voucher
																	<?php }?>
																	
																	<br><br>
																<?php
																}
																	$createS='';
																	$updateS='';
																	$deleteS='';
																	$approvedVoucherS='';
															}
														}
														
													}
													//end without super admin
												}
												else
												{
													//start with superadmin
													for($i=0; $i< sizeof($menu_item); $i++) 
													{
														?>
														<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item[$i][id];?>' /><?php echo $menu_item[$i][name];?><br>
														<?php
														$command = Yii::app()->db->createCommand();
														$menu_item_child = $command->select("id,name")->from("menu_item")->where("parent='".$menu_item[$i][id]."' order by ordering")->queryAll();
														
														
														
															for($j=0; $j<sizeof($menu_item_child); $j++)
															{
																?>
																----<input type='checkbox' name='menu_permission[]' value='<?php echo $menu_item_child[$j][id];?>' /><?php echo $menu_item_child[$j][name];?><br>
																
																	--------<input type='checkbox' name='create[]' value='<?php echo $menu_item_child[$j][id];?>' />Create   <input type='checkbox' name='update[]' value='<?php echo $menu_item_child[$j][id];?>' />Update <input type='checkbox' name='delete[]' value='<?php echo $menu_item_child[$j][id];?>' />Delete
																	<?php if($menu_item_child[$j][id]=='13'){?>
																	<input type='checkbox' name='approvedVoucher' value='13' />Approved Voucher
																	<?php }?>
																	
																	<br><br>
																<?php
																	$createS='';
																	$updateS='';
																	$deleteS='';
																	$approvedVoucherS='';
															}
														
														
													}
													//end with super admin
												}

											}
											
											
											
                                        ?>
                                        	</span>
                                        </div>	
                                </div>
                                    
                                    
                                    
                                    
                                    <!--[if !IE]>start row<![endif]-->
                                    <div class="row">
                                        <div class="buttons">
                                            <ul>
                                                <li><span class="button send_form_btn"><span><span><?php 
                                                if($model->isNewRecord)
                                                {
                                                    echo 'Create';
                                                }
                                                else
                                                {
                                                    echo 'Update';
                                                } ?></span></span><?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></span></li>
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
<style>
.input_wrapper{
	width:100%!important;	
}
</style>
<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>Company</h2>
        
        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('index')?>" class="active"><span><span>Edit Company</span></span></a></li>
            
            <?php
				$existence = Company::model()->findAll();
				if(sizeof($existence)==0)
				{
			?>
            <li><a href="<?php echo $this->createUrl('create')?>" ><span><span>Create Company</span></span></a></li>
            <?php
				}
			?>
            
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
								'id'=>'company-form',
								'htmlOptions'=>array('class'=>'search_form general_form','enctype'=>"multipart/form-data"),
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
										<?php echo $form->labelEx($model,'name'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>100,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'name'); ?></span>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="row">
										<?php echo $form->labelEx($model,'reg_number'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'reg_number',array('size'=>60,'maxlength'=>100,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'reg_number'); ?></span>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="row">
										<?php echo $form->labelEx($model,'email'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>50,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'email'); ?></span>
                                        </div>
         
                                    </div>
                                
                                     <div class="row">
                                        <?php echo $form->labelEx($model,'mobile'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'mobile',array('size'=>60,'maxlength'=>20,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'mobile'); ?></span>
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="row">
                                        <?php echo $form->labelEx($model,'phone'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'phone',array('size'=>60,'maxlength'=>20,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'phone'); ?></span>
                                        </div>
                                        
                                    </div>
                                    
                                     <div class="row">
                                        <?php echo $form->labelEx($model,'fax'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'fax',array('size'=>60,'maxlength'=>20,'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'fax'); ?></span>
                                        </div>
                                        
                                    </div>
                                
                                    <div class="row">
                                        <?php echo $form->labelEx($model,'address'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper textarea_wrapper"><?php echo $form->textArea($model,'address',array('cols'=>10,'maxlength'=>250)); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'address'); ?></span>
                                        </div>    
                                      
                                    </div>
                                
                                    <div class="row">
                                        <?php echo $form->labelEx($model,'website'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper"><?php echo $form->textField($model,'website',array('size'=>60,'maxlength'=>50, 'class'=>'text')); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'website'); ?></span>
                                        </div>
                                        
                                    </div>
                                
                                    <div class="row">
                                        <?php echo $form->labelEx($model,'img'); ?>
                                        <div class="inputs">
                                            <span class="input_wrapper blank"><?php echo $form->fileField($model,'img',array('maxlength'=>100)); ?></span>
                                            <span class="system negative"><?php echo $form->error($model,'img'); ?></span>
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



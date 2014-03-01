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
    <div class="section_content table_section">
        <!--[if !IE]>start section content top<![endif]-->
        <div class="sct">
            <div class="sct_left">
                <div class="sct_right">
                    <div class="sct_left">
                        <div class="sct_right">                
                            <form action="#">
                            <fieldset>
                            <!--[if !IE]>start table_wrapper<![endif]-->
                            <div class="table_wrapper">
                                <div class="table_wrapper_inner">
                                <?php 
                                $this->widget('zii.widgets.grid.CGridView', array
                                (
                                'dataProvider'=>$dataProvider,
                                'summaryText'=>'',
                                'emptyText'=>'There is no Company Information in your database',
                                'columns'=>array
                                (
                                  array(
                                        'class'=>'IndexColumn',
                                        'header'=>'S. No.',
                                        
                                    ),
                                    array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'name',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
									array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'reg_number',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
                                    array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'email',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
                                    array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'mobile',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
									array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'phone',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
									array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'fax',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
                                    array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'address',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
                                    'website',   // display the 'content' attribute as purified HTML
									array
									(
                                    	//'class'=>'CLinkColumn',
										//'labelExpression'=>'<img src="company_img/$data->img"/>',
										//'urlExpression'=>'',
										'name'=>'img',
										'htmlOptions'=>array("class"=>"photo"),
										'header'=>'Logo',
										
										
									),
                                    array
                                    (            // display a column with "view", "update" and "delete" buttons
                                        'class'=>'CButtonColumn',
                                        'template'=>"{update}",
										'header'=>'Action',
                                    ),
                                ),
                                ));
                                
                                ?>
                                
                                </div>
                            </div>
                            <!--[if !IE]>end table_wrapper<![endif]-->
                            
                            </fieldset>
                            </form>
                            
                                    
                            
                            
                            
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
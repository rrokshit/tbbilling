<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>User Groups</h2>
        
        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('index')?>" class="active"><span><span>List Groups</span></span></a></li>
            
            <li><a href="<?php echo $this->createUrl('create')?>" ><span><span>Create Groups</span></span></a></li>
            
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
                                'emptyText'=>'There is no Groups in your database',
                                'columns'=>array
                                (
                                  array(
                                        'class'=>'IndexColumn',
                                        'header'=>'S. No.',
                                        'htmlOptions'=>array('width'=>'60px', 'style'=>'text-align:left'),
                                    ),
                                    array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'group_name',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
                                    array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'status',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
									array
                                    (            		// display 'Entry Date' using an expression
                                        'name'=>'menu_permission',
										'value'=>'UserGroup::model()->menuName($data->menu_permission)',
                                        'htmlOptions'=>array("style"=>"text-align:left"),
                                    ),
                                    array
                                    (            // display a column with "view", "update" and "delete" buttons
                                        'class'=>'CButtonColumn',
                                        'template'=>"{update}{delete}",
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




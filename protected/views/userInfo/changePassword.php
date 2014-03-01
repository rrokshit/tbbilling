<div class="section">
    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">
        <h2>Account Information</h2>
        
        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('myAccount')?>" ><span><span>My Account</span></span></a></li>
            
            <li><a href="<?php echo $this->createUrl('changePassword')?>" class="active"><span><span>Change Password</span></span></a></li>
            
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
                            <form action="<?php echo $this->createUrl('/userInfo/changePassword')?>" class="search_form general_form" method="post">
                            <fieldset>
                            <!--[if !IE]>start table_wrapper<![endif]-->
                            <div class="table_wrapper">
                                <div class="table_wrapper_inner">
                                <div class="forms">
                                	<!--[if !IE]>start system messages<![endif]-->
                                    <ul class="system_messages">
                                        <?php
											if($_GET[msg]=='success')
												$msg = 'Password Changed Successfull';
											else if($_GET[msg]=='current_not_match')
												$msg = 'You Have Enter Wrong Password';
											else if($_GET[msg]=='new_not_match')
												$msg = 'Your New Password Not Match';
												
										?>
                                        <li class="white"><span class="ico"></span><strong class="system_title"><?php echo $msg?></li>
                                        
                                    </ul>
                                    <!--[if !IE]>end system messages<![endif]-->
                                
                                    <div class="row">
                                            <label>Current Password</label>
                                            <div class="inputs">
                                                <span class="input_wrapper"><input type="password" name="currentPw" class="text" /></span>
                                            </div>
                                            
                                     </div>
                                     <div class="row">
                                            <label>New Password</label>
                                            <div class="inputs">
                                                <span class="input_wrapper"><input type="text" name="newPw" class="text" /></span>
                                            </div>
                                            
                                     </div>
                                     <div class="row">
                                            <label>Re-Type New Password</label>
                                            <div class="inputs">
                                                <span class="input_wrapper"><input type="text" name="renewPw" class="text" /></span>
                                            </div>
                                            
                                     </div>
                                     <!--[if !IE]>start row<![endif]-->
                                    <div class="row">
                                        <div class="buttons">
                                            <ul>
                                                <li><span class="button send_form_btn"><span><span>Change</span></span><?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?></span></li>
                                            </ul>     
                                        </div>
                                    </div>
                                    <!--[if !IE]>end row<![endif]-->
                                 </div>
                                
                                
                                

								
                                
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
<style>
#myInfo .head{
	font-weight:bold;
	font-size:12px;
}
</style>
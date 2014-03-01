<?php $this->layout='main2';?>




<form id="login-form" method="post" action="<?php echo Yii::app()->request->baseUrl;?>/index.php/site/login">
    <fieldset>

        <h1 id="logo"><a href="#">websitename Administration Panel</a></h1>
        <div class="formular">
            <div class="formular_inner">
            
            <label>
                <strong>Username:</strong>
                <span class="input_wrapper">
                    <input type="text" id="LoginForm_username" name="LoginForm[username]" class="text">
                </span>
            </label>
            <label>
                <strong>Password:</strong>
                <span class="input_wrapper">
                    <input type="password" id="LoginForm_password" name="LoginForm[password]" class="text">
                </span>
            </label>
            <label class="inline">
                <div class="row rememberMe">
					<input type="hidden" name="LoginForm[rememberMe]" value="0" id="ytLoginForm_rememberMe">
                    <input type="checkbox" value="1" id="LoginForm_rememberMe" name="LoginForm[rememberMe]">
                    Remember me next time
                    <div style="display:none" id="LoginForm_rememberMe_em_" class="errorMessage"></div>        
                </div>
            </label>
            
            
            <ul class="form_menu">
                <li><span class="button"><span><span>Submit</span></span><input type="submit" name=""/></span></li>
                <li><a href="#"><span><span>Back</span></span></a></li>
                <li><a href="#"><span><span>Forgot Pass</span></span></a></li>
            </ul>
            
            </div>
        </div>
    </fieldset>
</form>







</div><!-- form -->
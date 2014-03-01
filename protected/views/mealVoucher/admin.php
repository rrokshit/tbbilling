<div class="section">


    <!--[if !IE]>start title wrapper<![endif]-->
    <div class="title_wrapper">

        <h2>Meal Voucher</h2>

        <!--[if !IE]>start section menu<![endif]-->
        <ul class="section_menu">
            <li><a href="<?php echo $this->createUrl('create') ?>" ><span><span>Generate Meal Voucher</span></span></a></li>
            <li><a href="<?php echo $this->createUrl('admin') ?>" class="active"><span><span>View Meal Voucher</span></span></a></li>
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

                            <?php
                            $this->widget('zii.widgets.grid.CGridView', array(
                                'id' => 'meal-voucher-grid',
                                'dataProvider' => $model->search(),
                                'filter' => $model,
                                'columns' => array(
                                    'voucherCode',
                                    array(
                                      'name'=>'date',
                                      'value'=>'date("d-m-Y",strtotime($data->date))',
                                    ),
                                    'agencyName',
                                    'groupFitName',
                                    'numberOfPerson',
                                    
                                      'hotelRestaurant',
                                      'meal',
                                     
                                    array(
                                        'class' => 'CButtonColumn',
                                    ),
                                ),
                            ));
                            ?>
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
    .button-column{
        width:115px!important;
    }
</style>

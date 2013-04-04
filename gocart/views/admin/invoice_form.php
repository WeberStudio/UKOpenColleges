<?php define('ADMIN_FOLDER', $this->config->item('admin_folder')); ?> 
<div id="main" style="min-height:1000px">
<div class="container">
    <? include_once('includes/admin_profile.php');?> 
    <!-- End top-right -->
    <div id="main_container">
        <div class="row-fluid">
            <div class="span12">
                <div class="box paint color_5">

                    <div class="title">
                        <div class="row-fluid">
                            <h4> Invoice form</h4>
                        </div>
                    </div>
                    <!-- End .title -->  
                    <div class="content">

                        <?php echo form_open_multipart($this->config->item('admin_folder').'/invoices/invoices_save/'); ?>

                        <div class="tab-content">
                            <div class="tab-pane active" id="description_tab">

                                <fieldset>

                                                                                    

                                    <label for="name">Client Name</label>
                                    <?php
                                        $data    = array('name'=>'name','id'=>'name', 'value'=>set_value('name','name'), 'class'=>'span12');
                                        echo form_input($data);
                                    ?>

                                    <label for="group">Group</label>
                                    <?php
                                        $data    = array('name'=>'client', 'value'=>set_value('group'), 'class'=>'span12');
                                        echo form_input($data);
                                    ?>

                                    <label for="date">Date </label>
                                    <?php
                                        $data    = array('name'=>'date','id'=>'datepicker1', 'value'=>set_value('date'), 'class'=>'span12');
                                        echo form_input($data);
                                    ?> 
                                     
                                   
                                </fieldset>

                            </div>   
                        </div>


                        <button type="submit" class="btn btn-inverse btn-block btn-large"><?php echo lang('form_save');?></button>

                        </form>
                    </div>

                </div>
            </div>    
        </div>
    </div>
</div>
<script type="text/javascript">
    $('form').submit(function() {
        $('.btn').attr('disabled', true).addClass('disabled');
    });
</script>


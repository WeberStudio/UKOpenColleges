<div id="main" style="min-height:1000px">
<div class="container">
                <? include_once('includes/admin_profile.php');?>    
        <!-- End top-right -->
    </div>
    <div id="main_container">
        <div class="row-fluid">
            <div class="span12">
                <div class="box paint color_5">

                    <div class="title">
                        <div class="row-fluid">
                            <h4> Invoice form</h4>
                        </div>
                    </div>

                    <div class="content">

                        <?php echo form_open_multipart($this->config->item('admin_folder').'/invoices/form/'.$id); ?>

                        <div class="tab-content">
                            <div class="tab-pane active" id="description_tab">

                                <fieldset>
                                    <label for="name"><?php echo lang('name');?></label>
                                    <?php
                                        $data    = array('name'=>'name', 'value'=>set_value('name', $name), 'class'=>'span12');
                                        echo form_input($data);
                                    ?>

                                    <label for="description"><?php echo lang('description');?></label>
                                    <?php
                                        $data    = array('name'=>'description', 'class'=>'redactor', 'value'=>set_value('description', $description));
                                        echo form_textarea($data);
                                    ?>

                                    <label for="date"> Date </label>
                                    <?php
                                        $data    = array('name'=>'name', 'value'=>set_value('name', $name), 'class'=>'span12');
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


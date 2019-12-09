{include file='_head.tpl'}
{include file='_header.tpl'}
<!-- page content -->
<div class="container" style="margin-top: 30px;">
    <div class="row">
    	<div class="col-12 col-md-10 mx-md-auto">
            <div class="card shadow">
            <div class="card-header">
                <h3 style="color:#29b6ac">{__("This information will let us know more about you")}</h3>
              
            </div>
                <div class="card-body">
                 

                    <!-- nav -->
                    <ul class="nav nav-pills nav-fill nav-started mb30 js_wizard-steps">
                        <li class="nav-item">
                            <a class="nav-link active" href="#step-1">
                                <!-- <h4 class="mb5">{__("Step 1")}</h4> -->
                                <p class="mb0">{__("Upload your photo")}</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#step-2">
                                <!-- <h4 class="mb5">{__("Step 2")}</h4> -->
                                <p class="mb0">{__("Update your info")}</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#step-3">
                                <!-- <h4 class="mb5">{__("Step 3")}</h4> -->
                                <p class="mb0">{__("Add followers")}</p>
                            </a>
                        </li>
                    </ul>
                    <!-- nav -->

                    <!-- tabs -->
                    <div class="js_wizard-content" id="step-1">
                        <div class="text-center">
                            <h3 class="mb5">{__("Welcome")} <span class="text-primary">{$user->_data['user_firstname']}</span></h3>
                            <!--<p class="mb20">{__("Let's start with your photo")}</p>-->
                        </div>
                        
                        <!-- profile-avatar -->
                        <div class="position-relative" style="height: 170px;">
                            <div class="profile-avatar-wrapper static">
                                <img src="{$user->_data['user_picture']}" alt="{$user->_data['user_firstname']} {$user->_data['user_lastname']}">

                                <!-- buttons -->
                                <div class="profile-avatar-change">
                                    <i class="fa fa-camera js_x-uploader" data-handle="picture-user"></i>
                                </div>
                                <div class="profile-avatar-change-loader">
                                    <div class="progress x-progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <div class="profile-avatar-crop {if $user->_data['user_picture_default'] || !$user->_data['user_picture_id']}x-hidden{/if}">
                                    <i class="fa fa-crop-alt js_init-crop-picture" data-image="{$user->_data['user_picture_full']}" data-handle="user" data-id="{$user->_data['user_id']}"></i>
                                </div>
                                <div class="profile-avatar-delete {if $user->_data['user_picture_default']}x-hidden{/if}">
                                    <i class="fa fa-trash js_delete-picture" data-handle="picture-user"></i>
                                </div>
                                <!-- buttons -->
                            </div>
                        </div>
                        <!-- profile-avatar -->

                        <!-- buttons -->
                        <div class="clearfix mt20">
                        {if $system['language']['code']=="ar_sa"}
                        <button id="activate-step-2" class="btn btn-primary float-right">{__("Next Step")}<i class="fas fa-arrow-circle-left ml5"></i></button>
                        {else}
                        
                        <button id="activate-step-2" class="btn btn-primary float-right">{__("Next Step")}<i class="fas fa-arrow-circle-right ml5"></i></button>

                        {/if}
                            
                        </div>
                        <!-- buttons -->
                    </div>

                    <div class="js_wizard-content x-hidden" id="step-2">
                        <div class="text-center">
                            <h3 class="mb5">{__("Update your info")}</h3>
                            <p class="mb20">{__("Share your information with our community")}</p>
                        </div>

                        <form class="js_ajax-forms" data-url="users/started.php">
                            <div class="heading-small mb20">
                                {__("Location")}
                            </div>
                            <div class="pl-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="country">{__("Country")}</label>
                                    <select class="form-control" name="country" id="country">
                                        <option value="none">{__("Select Country")}</option>
                                        {foreach $countries as $country}
                                               {if $system['language']['dir'] == "LTR"}
                                                 <option {if $user->_data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_id']}">{$country['country_name']}</option>
                                 
                                               {elseif $system['language']['dir'] == "RTL"}
                                                 <option {if $user->_data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_id']}">{$country['country_nameAr']}</option>                                           
                                               {/if}
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="city">{__("Current City")}</label>
                                        <input type="text" class="form-control js_geocomplete" name="city" id="city" value="{$user->_data['user_current_city']}">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="hometown">{__("Hometown")}</label>
                                        <input type="text" class="form-control js_geocomplete" name="hometown" id="hometown" value="{$user->_data['user_hometown']}">
                                    </div>
                                </div>
                            </div>

                            <div class="divider"></div>

                            <div class="heading-small mb20">
                                {__("Work")}
                            </div>
                            <div class="pl-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="work_title">{__("Work Title")}</label>
                                    <input type="text" class="form-control" name="work_title" id="work_title" value="{$user->_data['user_work_title']}">
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="work_place">{__("Work Place")}</label>
                                        <input type="text" class="form-control" name="work_place" id="work_place" value="{$user->_data['user_work_place']}">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="work_url">{__("Work Website")}</label>
                                        <input type="text" class="form-control" name="work_url" id="work_url" value="{$user->_data['user_work_url']}">
                                    </div>
                                </div>
                            </div>
                                
                            <div class="divider"></div>

                            <div class="heading-small mb20">
                                {__("Education")}
                            </div>
                            <div class="pl-md-4">
                                <div class="form-group">
                                    <label class="form-control-label" for="edu_major">{__("Major")}</label>
                                    <input type="text" class="form-control" name="edu_major" id="edu_major" value="{$user->_data['user_edu_major']}">
                                </div>
                                <div class="row">
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="edu_school">{__("School")}</label>
                                        <input type="text" class="form-control" name="edu_school" id="edu_school" value="{$user->_data['user_edu_school']}">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="form-control-label" for="edu_class">{__("Class")}</label>
                                        <input type="text" class="form-control" name="edu_class" id="edu_class" value="{$user->_data['user_edu_class']}">
                                    </div>
                                </div>
                            </div>
                                
                            <!-- success -->
                            <div class="alert alert-success x-hidden"></div>
                            <!-- success -->

                            <!-- error -->
                            <div class="alert alert-danger x-hidden"></div>
                            <!-- error -->

                            <!-- buttons -->
                            <div class="clearfix mt20">
                                <div class="float-right">
                                    <button type="submit" class="btn btn-success"><i class="fas fa-check-circle mr5"></i>{__("Save Changes")}</button>
                                    {if $system['language']['code']=="ar_sa"}
                        <button id="activate-step-3" class="btn btn-primary float-right">{__("Next Step")}<i class="fas fa-arrow-circle-left ml5"></i></button>
                        {else}
                        
                        <button id="activate-step-3" class="btn btn-primary float-right">{__("Next Step")}<i class="fas fa-arrow-circle-right ml5"></i></button>

                        {/if}
                                </div>
                            </div>
                            <!-- buttons -->
                        </form>
                    </div>

                    <div class="js_wizard-content x-hidden" id="step-3">
                        <div class="text-center">
                            <h3 class="mb5">{__("Add Friends")}</h3>
                            <p class="mb20">{__("Get latest activities from our popular users")}</p>
                        </div>
                        
                        <!-- new people -->
                        <ul class="row">
                            {foreach $user->_data['new_people'] as $_user}
                            {include file='__feeds_user.tpl' _tpl="box" _connection="add"}
                            {/foreach}
                        </ul>
                        <!-- new people -->

                        <!-- buttons -->
                        <div class="clearfix mt20">
                            <a href="{$system['system_url']}/started/finished" class="btn btn-danger float-right"><i class="fas fa-check-circle mr5"></i>{__("Finish")}</a>
                        </div>
                        <!-- buttons -->
                    </div>
                    <!-- tabs -->

                </div>
            </div>
        </div>
    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}

<script type="text/javascript">
    $(function() {

        var wizard_steps = $('.js_wizard-steps li a');
        var wizard_content = $('.js_wizard-content');

        wizard_content.hide();

        wizard_steps.click(function(e) {
            e.preventDefault();
            var $target = $($(this).attr('href'));
            if(!$(this).hasClass('disabled')) {
                wizard_steps.removeClass('active');
                $(this).addClass('active');
                wizard_content.hide();
                $target.show();
            }
        });

        $('.js_wizard-steps li a.active').trigger('click');

        $('#activate-step-2').on('click', function(e) {
            $('.js_wizard-steps li:eq(1) a').removeClass('disabled');
            $('.js_wizard-steps li a[href="#step-2"]').trigger('click');
        });

        $('#activate-step-3').on('click', function(e) {
            $('.js_wizard-steps li:eq(2) a').removeClass('disabled');
            $('.js_wizard-steps li a[href="#step-3"]').trigger('click');
        });

    });
</script>
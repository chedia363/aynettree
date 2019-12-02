{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="page-header bg-2">
  <div class="crystal c03"></div>
    <div class="circle-2"></div>
    <div class="circle-3"></div>
    <div class="inner">
        <h2>{__("Contact Us")}</h2>
        <p>{__("Contact us and we’ll get back to you as soon as possible")}</p>
    </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container {if $user->_logged_in}offcanvas{/if}" style="margin-top: -25px;">
    <div class="row">

        <!-- side panel -->
        {if $user->_logged_in}
            <div class="col-12 d-block d-sm-none offcanvas-sidebar">
                {include file='_sidebar.tpl'}
            </div>
        {/if}
        <!-- side panel -->

        <!-- content panel -->
        <div class="col-12 col-md-8 col-lg-6 col-xl-5 mx-md-auto {if $user->_logged_in}offcanvas-mainbar{/if}">
            <div class="card px-4 py-4 shadow">
                <div class="card-body">
                    <form class="js_ajax-forms " data-url="core/contact.php">
                        <div class="form-group">
                            <label class="form-control-label">{__("Name")} <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="name">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">{__("Country")}</label>
                            <select class="form-control" name="user_country">
                                <option value="none">{__("Select Country")}</option>
                                {foreach $countries as $country}

                                   {if $system['language']['dir'] == "LTR"}
                                     <option {if $data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_id']}">{$country['country_name']}</option>
                                   {else}
                                     <option {if $data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_id']}">{$country['country_nameAr']}</option>
                                   {/if}
                                {/foreach}
                            </select>
                        </div>
                        

                        <div class="form-group">
                            <label class="form-control-label">{__("City")} <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="City">
                        </div>

                        <!--<div class="form-group">
                            <label class="form-control-label">{__("Subject")} <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="subject">
                        </div>-->

                        <div class="form-group">
                            <label class="form-control-label">{__("Message")} <span class="text-danger">*</span></label>
                            <textarea class="form-control" name="message" rows="5"></textarea>
                        </div>

                        
                        <div class="form-group">
                            <label class="form-control-label">{__("Mobile Number")} <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="user_phone">
                        </div>

                       <!-- <div class="form-group">
                      
                         
                          <label class="form-control-label">{__("Select Folder")}*</label>
                          <input type="file" name="folder" class="form-control" style="transform: translate(5px,-2px);width:359px;">
                      
                         
                        </div>-->

                        {if $system['reCAPTCHA_enabled']}
                            <div class="form-group">
                                <!-- reCAPTCHA -->
                                <script src='https://www.google.com/recaptcha/api.js' async defer></script>
                                <div class="g-recaptcha" data-sitekey="{$system['reCAPTCHA_site_key']}"></div>
                                <!-- reCAPTCHA -->
                            </div>
                        {/if}

                        <div class="form-group">
                            <button type="submit" class="btn btn-md btn-block rounded-pill btn-primary">
                                <i class="far fa-envelope-open mr10"></i>{__("Send")}
                            </button>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger x-hidden"></div>
                        <!-- error -->

                    </form>
                </div>
            </div>
        </div>
        <!-- content panel -->
    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}
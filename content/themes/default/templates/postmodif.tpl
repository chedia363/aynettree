 {include file='_head.tpl'}
{include file='_header.tpl'}
 {if $view == "editt"}

          

            <!-- content panel -->
            <div class="col-md-8 col-lg-9 offcanvas-mainbar">
                <!-- content -->
                <div class="card">
                    <div class="card-header with-icon">
                        <i class="fa fa-edit mr10"></i>{__("Edit Article")}
                        <div class="float-right">
                            <a href="{$system['system_url']}" class="btn btn-sm btn-light">
                                <i class="fa fa-arrow-circle-left mr5"></i>{__("Go Back")}
                            </a>
                        </div>
                    </div>
                    <div class="js_ajax-forms-html " data-url="posts/article.php?do=edit&id={$post['post_id']}">
                        <div class="card-body">
                         

                            <div class="form-group form-row">
                                <label class="col-md-2 form-control-label">
                                    {__("Content")}
                                </label>
                                <div class="col-md-10">
                                    <textarea name="text" class="form-control js_wysiwyg">{$post['text_plain']}</textarea>
                                </div>
                            </div>

                           

                 
                         

                            <!-- error -->
                            <div class="alert alert-danger mb0 x-hidden"></div>
                            <!-- error -->
                        </div>
                        <div class="card-footer text-right">
                           
                            <button type="submit" class="btn btn-primary">{__("Publish")}</button>
                        </div>
                    </div>
                </div>
                <!-- content -->
            </div>
            <!-- content panel -->
            {/if}

            {include file='_footer.tpl'}
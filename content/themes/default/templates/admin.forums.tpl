<div class="card">
    <div class="card-header with-icon">
        {if $sub_view == ""}
            <div class="float-right">
                <a href="{$system['system_url']}/admincp/forums/add_forum" class="btn btn-sm btn-primary">
                    <i class="fa fa-plus mr5"></i>{__("Add New Forum")}
                </a>
            </div>
        {elseif $sub_view == "add_forum" || $sub_view == "edit_forum"}
            <div class="float-right">
                <a href="{$system['system_url']}/admincp/forums" class="btn btn-sm btn-light">
                    <i class="fa fa-arrow-circle-left mr5"></i>{__("Go Back")}
                </a>
            </div>
        {/if}
        <i class="fa fa-comments mr10"></i>{__("Forums")}
        {if $sub_view == "settings"} &rsaquo; {__("Settings")}{/if}
        {if $sub_view == "add_forum"} &rsaquo; {__("Add New Forum")}{/if}
        {if $sub_view == "edit_forum"} &rsaquo; {$data['forum_name']}{/if}
    </div>

    {if $sub_view == "settings"}

        <form class="js_ajax-forms " data-url="admin/forums.php?do=settings">
            <div class="card-body">
                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6">{__("Forums")}</div>
                        <div class="form-text d-none d-sm-block">{__("Turn the forums On and Off")}</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="forums_enabled">
                            <input type="checkbox" name="forums_enabled" id="forums_enabled" {if $system['forums_enabled']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6">{__("Online Users")}</div>
                        <div class="form-text d-none d-sm-block">{__("Show online users")}</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="forums_online_enabled">
                            <input type="checkbox" name="forums_online_enabled" id="forums_online_enabled" {if $system['forums_online_enabled']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <div class="form-table-row">
                    <div>
                        <div class="form-control-label h6">{__("Statistics")}</div>
                        <div class="form-text d-none d-sm-block">{__("Show forums statistics")}</div>
                    </div>
                    <div class="text-right">
                        <label class="switch" for="forums_statistics_enabled">
                            <input type="checkbox" name="forums_statistics_enabled" id="forums_statistics_enabled" {if $system['forums_statistics_enabled']}checked{/if}>
                            <span class="slider round"></span>
                        </label>
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
            </div>
        </form>

    {elseif $sub_view == ""}

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-hover js_treegrid">
                    <thead>
                        <tr>
                            <th>{__("Title")}</th>
                            <th>{__("Description")}</th>
                            <th>{__("Threads")}</th>
                            <th>{__("Order")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                            {include file='admin.forums.recursive_rows.tpl'}
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

    {elseif $sub_view == "add_forum"}

        <form class="js_ajax-forms " data-url="admin/forums.php?do=add_forum">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Name")}
                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="forum_name">
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Description")}
                    </label>
                    <div class="col-md-9">
                        <textarea class="form-control" name="forum_description"></textarea>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Section")}
                    </label>
                    <div class="col-md-9">
                        <select class="form-control" name="forum_section">
                            <option value="0" class="text-success">{__("Set as a Section")}</option>
                            {foreach $forums as $forum}
                                {include file='admin.forums.recursive_options.tpl'}
                            {/foreach}
                        </select>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Order")}
                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="forum_order">
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
            </div>
        </form>

    {elseif $sub_view == "edit_forum"}

        <form class="js_ajax-forms " data-url="admin/forums.php?do=edit_forum&id={$data['forum_id']}">
            <div class="card-body">
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Name")}
                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="forum_name" value="{$data['forum_name']}">
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Description")}
                    </label>
                    <div class="col-md-9">
                        <textarea class="form-control" name="forum_description">{$data['forum_description']}</textarea>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Section")}
                    </label>
                    <div class="col-md-9">
                        <select class="form-control" name="forum_section">
                            <option value="0" class="text-success">{__("Set as a Section")}</option>
                            {foreach $data['sections'] as $forum}
                                {include file='admin.forums.recursive_options.tpl'}
                            {/foreach}
                        </select>
                    </div>
                </div>

                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Order")}
                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="forum_order" value="{$data['forum_order']}">
                    </div>
                </div>

                <!-- success -->
                <div class="alert alert-success mb0 x-hidden"></div>
                <!-- success -->

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="card-footer text-right">
                <button type="submit" class="btn btn-primary">{__("Save Changes")}</button>
            </div>
        </form>

    {/if}
</div>
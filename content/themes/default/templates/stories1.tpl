
{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container mt20 offcanvas">
    <div class="row">

        <!-- left panel -->
        <div class="col-md-4 col-lg-3 offcanvas-sidebar js_sticky-sidebar">
            {include file='_sidebar.tpl'}
        </div>
        <!-- left panel -->

        <!-- content panel -->
        <div class="col-md-8 col-lg-9 offcanvas-mainbar">

<div class="card">
    <div class="card-header with-icon">
    
        {if $view == "edit"}
            <div class="float-right">
                <a href="{$system['system_url']}/stories1.php" class="btn btn-sm btn-light">
                    <i class="fa fa-arrow-circle-left mr5"></i>{__("Go Back")}
                </a>
            </div>
        {/if}
       
    </div>

    {if $view == ""}

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover js_dataTable">
                    <thead>
                        <tr>
                            <th>{__("ID Story")}</th>
                       
                            <th>{__("Source")}</th>
                            <th>{__("text")}</th>
                            <th>{__("Time")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                            <tr>
                                <td>{$row['name']}</td>
                                {if $row['source']=="photos/1.png"}
                                <td>{__("No Image or Video")}</td>
                                {else}
                                <td><img class="tbl-imageStry1" src="{$system['system_uploads']}/{$row['source']}"></td>
                                {/if}
                                {if $row['text']==""}
                                <td>{__("No Message for this story")}</td>
                                {else}
                                <td>{$row['text']}</td>
                                {/if}
                                
                                <td>{$row['time']}</td>
                              
                                <td>
                                  

                                    <a  href="{$system['system_url']}/stories1.php/edit/{$row['media_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                             <i class="fa fa-pencil-alt"></i> 
                                    </a>

                                    <!-- <a  href="{$system['system_url']}/stories1.php/delete/{$row['media_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                             <i class="fa fa-trash-alt"></i>
                                    </a> -->
                                    
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_admin-deleter" data-handle="Stories" data-id="{$row['media_id']}">
                                        <i class="fa fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>

   {elseif $view == "edit"}

        <form class="js_ajax-forms " data-url="admin/Stories.php?do=edit&id={$data['media_id']}">
            <div class="card-body">
                             
                  


               <div class="form-group form-row">
               
                    <label class="col-md-3 form-control-label">
                        {__("Source")}
                    </label>
                    <div class="col-md-9">
                        {if $data['source'] == ''}
                            <div class="x-image">
                                <button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
                                    <span>×</span>
                                </button>
                                <div class="x-image-loader">
                                    <div class="progress x-progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                                <input type="hidden" class="js_x-image-input" name="source" value="">
                            </div>
                        {else}
                            <div class="x-image" style="background-image: url('{$system['system_uploads']}/{$data['source']}')">
                                <button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
                                    <span>×</span>
                                </button>
                                <div class="x-image-loader">
                                    <div class="progress x-progress">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                                <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                                <input type="hidden" class="js_x-image-input" name="source" value="{$data['source']}">
                            </div>
                        {/if}
                    </div>
                </div>









                    
              
              <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Story Name")}
                    </label>
                    <div class="col-md-9">
                        <input class="form-control" name="text" value="{$data['text']}">
                       
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
{include file='_footer.tpl'}

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
      <i class="fa fa-money-bill-alt mr10"></i>{__("My Stories")}
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
                        
                       
                            <th>{__("story Image")}</th>
                            <th>{__("story Message")}</th>
                            <th>{__("Time")}</th>
                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach $rows as $row}
                            <tr>
                               
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
                                    
                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_delete-story" data-handle="Stories" data-id="{$row['media_id']}">
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

       


    {/if}



</div>
{include file='_footer.tpl'}
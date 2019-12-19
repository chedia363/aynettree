
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
         <img  src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/taranim.svg" class="iconspost">
         {__("My Archived Stories")}
        {if $view == "edit"}
            <div class="float-right">
                <a href="{$system['system_url']}/archivStories" class="btn btn-sm btn-light">
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
                        
                            <th>{__("Time")}</th>

                            <th>{__("Actions")}</th>
                        </tr>
                    </thead>
                     {if $rows}
                    <tbody class="publisher-mini">
                 
                        {foreach $rows as $row}
                            <tr>
                                
                                <td>
                                                                  
                                 <video class="js_fluidplayer" style="width: 250px; "controls>
                                     <source src="{$system['system_uploads']}/{$row['source']}" type="video/webm">
                                 </video>

                                </td>
                               
                               


                               
                                
                                <td>{$row['time']}</td>
                              
                                <td>
                                  

                                    <!--<a  href="{$system['system_url']}/archivStories/edit/{$row['media_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                             <i class="fa fa-pencil-alt"></i> 
                                    </a>-->

                                    <!-- <a  href="{$system['system_url']}/stories1.php/delete/{$row['media_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
                                             <i class="fa fa-trash-alt"></i>
                                    </a> -->
                                   <button type="button" class="btn btn-primary js_publisher-story2" data-id="{$row['media_id']}">{__("Publish")}</button>

                                  

                                    <button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_delete-storyArchiv" data-handle="ArchivStories" data-id="{$row['media_id']}">
                                        <i class="fa fa-trash-alt"></i>
                                    </button>
                                </td>
                            </tr>
                            
                        {/foreach}


                    </tbody>
                {else}
                    <p class="text-center text-muted">
                        {__("No Archived Stories to show")} 
                    </p>
                {/if}
                   
                </table>

            </div>
        </div>

    {elseif $view == "edit"}

        cc 

    {/if}



</div>
{include file='_footer.tpl'}
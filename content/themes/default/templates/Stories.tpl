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

       

            <!-- content -->
            <div class="row">
        

                <!-- right panel -->
                <div class="col-lg-8 order-lg-1">
                    <div class="card">
                        
                        {if $view == ""}
                           <div class="card">
    <div class="card-header with-icon">
        {__("Stories")}
    </div>
    <div class="card-body">
 <div class="form-row">
 
        {foreach $rows as $row}

       
            <div class="col-sm-3" style="width: 89px;height: 226px;border-radius: 4px;margin-bottom: 20px;overflow: hidden;">

                
                {if $row['source']=="photos/1.png"}
               {__("No Image or Video")}
                {else}
                <img src="{$system['system_uploads']}/{$row['source']}">
                {/if}
                    <div class="stat-cell">
                     
                        {if $row['text']==""}
                        {__("No Message for this story")}
                        {else}
                         <span class="text-lg">{$row['text']}</span><br>
                        {/if}
                       
                        <span class="text-lg">{$row['time']}</span><br>
                        
                                
                    </div>
         
            </div>
         
            {/foreach} 
    </div>
</div>
                      
                        
                        {elseif $view == "add"}
                            <div class="card-header bg-transparent">
                                <strong>{__("Friend Requests Sent")}</strong>
                            </div>
                            <div class="card-body">
                                {if $user->_data['friend_requests_sent_count'] > 0}
                                    <ul>
                                        {foreach $user->_data['friend_requests_sent'] as $_user}
                                        {include file='__feeds_user.tpl' _tpl="list" _connection="cancel"}
                                        {/foreach}
                                    </ul>
                                {else}
                                    <p class="text-center text-muted">
                                        {__("No new requests")}
                                    </p>
                                {/if}

                                <!-- see-more -->
                                {if $user->_data['friend_requests_sent_count'] >= $system['max_results']}
                                    <div class="alert alert-info see-more js_see-more" data-get="friend_requests_sent">
                                        <span>{__("See More")}</span>
                                        <div class="loader loader_small x-hidden"></div>
                                    </div>
                                {/if}
                                <!-- see-more -->
                            </div>
                        
                        {/if}

                    </div>
                </div>
                <!-- right panel -->
            </div>
            <!-- content -->

        </div>
        <!-- content panel -->

    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}
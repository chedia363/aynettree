<li class="dropdown js_live-requests">
    <a href="#" data-toggle="dropdown" data-display="static">
        <img src="{$system['system_url']}/content/themes/default/images/icons/groupB.png" class="imgNotifAynet">
        <span class="counter purple shadow-sm {if $user->_data['user_live_requests_counter'] == 0}x-hidden{/if}">
            {$user->_data['user_live_requests_counter']}
        </span>
    </a>
    <div class="dropdown-menu dropdown-menu-right dropdown-widget with-arrow js_dropdown-keepopen">
        <div class="dropdown-widget-header">
            <span class="title">{__("Friend Requests")}</span>
        </div>
        <div class="dropdown-widget-body">
            <div class="js_scroller">
                <!-- Friend Requests -->
                {if $user->_data['friend_requests_count'] > 0}
                    <ul>
                        {foreach $user->_data['friend_requests'] as $_user}
                        {include file='__feeds_user.tpl' _tpl="list" _connection="request"}
                        {/foreach}
                    </ul>
                {else}
                    <p class="text-center text-muted mt10">
                        {__("No new requests")}
                    </p>
                {/if}
                <!-- Friend Requests -->
                
                <!-- People You May Know -->
                <div class="title">
                    {__("People You May Know")}
                </div>
                
                {if $user->_data['new_people']}
                    <ul>
                        {foreach $user->_data['new_people'] as $_user}
                        {include file='__feeds_user.tpl' _tpl="list" _connection="add"}
                        {/foreach}
                    </ul>
                {else}
                    <p class="text-center text-muted mt10">
                        {__("No people available")}
                    </p>
                {/if}
                <!-- People You May Know -->
            </div>
        </div>
        <a class="dropdown-widget-footer" href="{$system['system_url']}/people/friend_requests">{__("See All")}</a>
    </div>
</li>
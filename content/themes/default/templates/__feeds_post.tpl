{if !$standalone}<li>{/if}
    <!-- post -->
    <div class="post {if $boosted}boosted{/if}" data-id="{$post['post_id']}">

        {if $standalone && $pinned}
            <div class="pin-icon" data-toggle="tooltip" title="{__("Pinned Post")}">
                <i class="fa fa-bookmark"></i>
            </div>
        {/if}

        {if $standalone && $boosted}
            <div class="boosted-icon" data-toggle="tooltip" title="{__("Promoted")}">
                <i class="fa fa-bullhorn"></i>
            </div>
        {/if}

        <!-- post body -->
        <div class="post-body">
            
            {include file='__feeds_post.body.tpl' _post=$post _shared=false}

            <!-- post stats -->
            <div class="post-stats clearfix">
                <!-- reactions stats -->
                {if $post['reactions_total_count'] > 0}
                    <div class="float-left mr10" data-toggle="modal" data-url="posts/who_reacts.php?post_id={$post['post_id']}">
                        <div class="reactions-stats">
                            {foreach $post['reactions'] as $reaction_type => $reaction_count}
                                {if $reaction_count > 0}
                                    <div class="reactions-stats-item">
                                        <div class="inline-emoji no_animation">
                                            {include file='__reaction_emojis.tpl' _reaction=$reaction_type}
                                        </div>
                                    </div>
                                {/if}
                            {/foreach}
                            <!-- reactions count -->
                            <span>
                                {$post['reactions_total_count']}
                            </span>
                            <!-- reactions count -->
                        </div>
                    </div>
                {/if}
                <!-- reactions stats -->

                <!-- video views -->
                {if $post['post_type'] == "video"}
                    <span>
                        <i class="fa fa-eye"></i> {$post['video']['views']}
                    </span>
                {/if}
                <!-- video views -->

                <!-- audio views -->
                {if $post['post_type'] == "audio"}
                    <span>
                        <i class="fa fa-eye"></i> {$post['audio']['views']}
                    </span>
                {/if}
                <!-- audio views -->

                <!-- comments & shares -->
                <span class="float-right">
                    <!-- comments -->
                    <span class="pointer js_comments-toggle">
                        <img class="iconspost"src="{$system['system_url']}/content/themes/default/images/icons/message.svg"> {$post['comments']} {__("Comments")}
                    </span>
                    <!-- comments -->

                    <!-- shares -->
                    <span class="pointer ml10 {if $post['shares'] == 0}x-hidden{/if}" data-toggle="modal" data-url="posts/who_shares.php?post_id={$post['post_id']}">
                        <i class="fa fa-share"></i> {$post['shares']} {__("Shares")}
                    </span>
                    <!-- shares -->
                </span>
                <!-- comments & shares -->
            </div>
            <!-- post stats -->

            <!-- post actions -->
            {if $user->_logged_in && $_get != "posts_information"}
                <div class="post-actions clearfix">
                    <!-- reactions -->
                    <div class="action-btn unselectable reactions-wrapper {if $post['i_react']}js_unreact-post{/if}" data-reaction="{$post['i_reaction']}">
                        <!-- reaction-btn -->
                        <div class="reaction-btn">
                            {if !$post['i_react']}
                                <div class="reaction-btn-icon js_react-post" data-reaction="{__('Like')}" data-reaction-color="blue" >
                                    <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/like.svg">
                                    <span class="reaction-btn-name">{__("Like")}</span>
                                </div>
                               
                            {else}
                                <div class="reaction-btn-icon">
                                    <div class="inline-emoji no_animation">
                                        {include file='__reaction_emojis.tpl' _reaction=$post['i_reaction']}
                                    </div>
                                </div>
                                <span class="reaction-btn-name {$post['i_reaction_details']['color']}">{$post['i_reaction_details']['title']}</span>
                            {/if}
                        </div>
                        <!-- reaction-btn -->

                        <!-- reactions-container -->
                       
                        <!-- reactions-container -->
                    </div>
                    <!-- reactions -->

                    <!-- comment -->
                    <div class="action-btn js_comment {if $post['comments_disabled']}x-hidden{/if}">
                         <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/message.svg"><span> {__("Comment")}</span>
                    </div>
                    <!-- comment -->

                    <!-- share -->
                    
                        <div class="action-btn" data-toggle="modal" data-url="posts/share.php?do=create&post_id={$post['post_id']}">
                            <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/share.svg"><span> {__("Share")}</span>
                        </div>
                    
                    <!-- share -->
                </div>
            {/if}
            <!-- post actions -->

        </div>
        <!-- post body -->

        <!-- post footer -->
        <div class="post-footer {if !$standalone}x-hidden{/if}">
            <!-- comments -->
            {include file='__feeds_post.comments.tpl'}
            <!-- comments -->
        </div>
        <!-- post footer -->

    </div>
    <!-- post -->
{if !$standalone}</li>{/if}
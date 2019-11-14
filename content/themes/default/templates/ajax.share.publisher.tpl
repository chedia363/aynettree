<div class="modal-header">
    <h6 class="modal-title">
        <i class="fa fa-share mr5"></i>{__("Share")}
    </h6>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<form class="js_ajax-forms " data-url="posts/share.php?do=publish&post_id={$post['post_id']}">
    <div class="modal-body">
        {if $system['social_share_enabled']}
            <div class="post-social-share">
                <a href="http://www.facebook.com/sharer.php?u={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-facebook" target="_blank">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="https://twitter.com/intent/tweet?url={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-rounded btn-twitter" target="_blank">
                    <i class="fab fa-twitter"></i>
                </a>
                
                <a href="https://www.linkedin.com/shareArticle?mini=true&url={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-linkedin" target="_blank">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="https://api.whatsapp.com/send?text={$system['system_url']}/posts/{$post['post_id']}" class="btn btn-sm btn-rounded btn-social-icon btn-whatsapp" target="_blank">
                    <i class="fab fa-whatsapp"></i>
                </a>
                
            </div>
        {/if}

        <div class="h5 text-center">
            {__("Share the post to")}
        </div>

        <!-- share to options -->
        <div class="mb20 text-center">
        {if $post['privacy'] == "public"}
            <!-- Timeline -->
            <input class="x-hidden input-label" type="radio" name="share_to" id="share_to_timeline" value="timeline" checked="checked"/>
            <label class="button-label" for="share_to_timeline">
                <div class="icon">
                    <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/newsfeed.svg">
                </div>
                <div class="title">{__("Timeline")}</div>
            </label>
            <!-- Timeline -->
            <!-- Page 
            {if $pages}
                <input class="x-hidden input-label" type="radio" name="share_to" id="share_to_page" value="page"/>
                <label class="button-label" for="share_to_page">
                    <div class="icon">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/pages.png">
                    </div>
                    <div class="title">{__("Page")}</div>
                </label>
            {/if}
             Page -->
            <!-- Group -->

            {if $groups}
                <input class="x-hidden input-label" type="radio" name="share_to" id="share_to_group" value="group"/>
                <label class="button-label" for="share_to_group">
                    <div class="icon">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/group.svg">
                    </div>
                    <div class="title">{__("Group")}</div>
                </label>
            {/if}

            {/if}
            <!-- Group -->
            <input onclick="copyToClipboard('#p1')" class="x-hidden input-label" type="button" name="copy" id="copy" value="copy"/>
                <label class="button-label" for="copy">
                    <div class="icon">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/article.svg">
                    </div>
                    <div class="title">{__("copy")}</div>
                </label>
                <div class="copied" style="display: none;">Post copied</div>
                <p hidden id="p1">{$system['system_url']}/posts/{$post['post_id']}</p>
         
        </div>
        <!-- share to options -->
        {if $post['privacy'] == "public"}
        <div id="js_share-to-page" class="x-hidden">
            <div class="form-group">
                <label class="form-control-label">{__("Select Page")}</label>
                <select name="page" class="form-control">
                    {foreach $pages as $page}
                        <option value="{$page['page_id']}">{$page['page_title']}</option>
                    {/foreach}
                </select>
            </div>
        </div>
            
        <div id="js_share-to-group" class="x-hidden">
            <div class="form-group">
                <label class="form-control-label">{__("Select Groups")}</label>
                <select name="group" class="form-control">
                    {foreach $groups as $group}
                        <option value="{$group['group_id']}">{$group['group_title']}</option>
                    {/foreach}
                </select>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="form-control-label">{__("Message")}</label>
                    <textarea name="message" rows="3" dir="auto" class="form-control"></textarea>
                </div>
            </div>
        </div>
{/if}
        <!-- error -->
        <div class="alert alert-danger mb0 x-hidden"></div>
        <!-- error -->
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary">{__("Share")}</button>
    </div>
</form>

<script type="text/javascript">
    /* share post */
    $('input[type=radio][name=share_to]').on('change', function() {
        switch ($(this).val()) {
            case 'timeline':
                $('#js_share-to-page').hide();
                $('#js_share-to-group').hide();
                break;
            case 'page':
                $('#js_share-to-page').fadeIn();
                $('#js_share-to-group').hide();
                break;
            case 'group':
                $('#js_share-to-page').hide();
                $('#js_share-to-group').fadeIn();
                break;
          }
    });

    function copyToClipboard(element) {
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();

  $(".copied").text("{__('Post copied')}").show().fadeOut(2000);
    
}
</script>
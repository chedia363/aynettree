<div class="publisher-overlay"></div>
<div class="x-form publisher" data-handle="{$_handle}" {if $_id}data-id="{$_id}"{/if}>

    <!-- publisher loader -->
    <div class="publisher-loader">
        <div class="loader loader_small"></div>
    </div> 
    <!-- publisher loader -->

 <!-- publisher-tools-tabs -->
       
        <!-- publisher-tools-tabs -->

    <!-- publisher-message -->
    <div class="publisher-message">
    
        {if $_handle == "page"}
            <img class="publisher-avatar" src="{$spage['page_picture']}">
        {else}
            <img class="publisher-avatar" src="{$user->_data['user_picture']}">
        {/if}
        <textarea dir="auto" class="js_autosize js_mention js_publisher-scraper" data-init-placeholder='{__("What is on your mind? #Hashtag.. @Mention.. Link..")}' placeholder='{__("What is on your mind? #Hashtag.. @Mention.. Link..")}'></textarea>
        <div class="publisher-emojis">
            <div class="position-relative">
                <span class="js_emoji-menu-toggle" data-toggle="tooltip" data-placement="top" title='{__("Insert an emoji")}'>
                    <i class="far fa-smile-wink fa-lg"></i>
                </span>
            </div>
        </div>
    </div>
    <div class="publisher-tools-tabs">
            <ul class="row" >
                {if $system['photos_enabled']}
                    <li>
                        <div class="publisher-tools-tab attach js_publisher-tab" data-tab="photos">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/camera.png" class="js_x-uploader" data-handle="publisher" data-multiple="true"><!-- {__("Upload Photos")} -->
                        </div>
                    </li>
                    <li>
                        <div class="publisher-tools-tab js_publisher-tab" data-tab="album">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/album.png"><!-- {__("Create Album")} -->
                        </div>
                    </li>
                {/if}
                {if $system['geolocation_enabled']}
                    <li>
                        <div class="publisher-tools-tab js_publisher-tab" data-tab="location">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/placeholder.png"><!-- {__("Check In")} -->
                        </div>
                    </li>
                {/if}
               
                {if $system['gif_enabled']}
                    <li>
                        <div class="publisher-tools-tab js_publisher-tab" data-tab="gif">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/gif.png"><!-- {__("GIF")} -->
                        </div>
                    </li>
                {/if}
                {if $system['market_enabled'] && $_handle != "page" && $_handle != "group" && $_handle != "event"}
                    <li>
                        <div class="publisher-tools-tab link js_publisher-tab" data-tab="product" data-toggle="modal" data-url="posts/product.php?do=create">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/cart.png"><!-- {__("Sell Something")} -->
                        </div>
                    </li>
                {/if}
                {if $user->_data['can_write_articles'] && $_handle != "page" && $_handle != "group" && $_handle != "event"}
                    <li>
                        <a class="publisher-tools-tab link js_publisher-tab" data-tab="article" href="{$system['system_url']}/blogs/new">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/edit.png"><!-- {__("Write Article")} -->
                        </a>
                    </li>
                {/if}
                {if $system['polls_enabled']}
                    <li>
                        <div class="publisher-tools-tab js_publisher-tab" data-tab="poll">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/bar-chart.png"><!-- {__("Create Poll")} -->
                        </div>
                    </li>
                {/if}
               
                {if $system['videos_enabled']}
                    <li>
                        <div class="publisher-tools-tab attach js_publisher-tab" data-tab="video">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/video-camera.png" class="js_x-uploader" data-handle="publisher" data-type="video"><!-- {__("Upload Video")} -->
                        </div>
                    </li>
                {/if}
                {if $system['audio_enabled']}
                    <li>
                        <div class="publisher-tools-tab attach js_publisher-tab" data-tab="audio">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/music-player.png" class="js_x-uploader" data-handle="publisher" data-type="audio"><!-- {__("Upload Audio")} -->
                        </div>
                    </li>
                {/if}
                {if $system['file_enabled']}
                    <li>
                        <div class="publisher-tools-tab attach js_publisher-tab" data-tab="file">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/publisher/folder.png" class="js_x-uploader" data-handle="publisher" data-type="file"><!-- {__("Upload File")} -->
                        </div>
                    </li>
                {/if}
            </ul>
        </div>
    <!-- publisher-message -->


    <!-- publisher-slider -->
    <div class="publisher-slider">
        <!-- publisher scraper -->
        <div class="publisher-scraper"></div>
        <!-- publisher scraper -->

        <!-- post attachments -->
        <div class="publisher-attachments attachments clearfix x-hidden"></div>
        <!-- post attachments -->

        <!-- post album -->
        <div class="publisher-meta" data-meta="album">
            <i class="fa fa-file-image fa-fw"></i>
            <input type="text" placeholder='{__("Album title")}'>
        </div>
        <!-- post album -->

        <!-- post poll -->
        <div class="publisher-meta" data-meta="poll">
            <i class="fa fa-plus fa-fw"></i>
            <input type="text" placeholder='{__("Add an option")}...'>
        </div>
        <div class="publisher-meta" data-meta="poll">
            <i class="fa fa-plus fa-fw"></i>
            <input type="text" placeholder='{__("Add an option")}...'>
        </div>
        <!-- post poll -->

        <!-- post video -->
        <div class="publisher-meta" data-meta="video">
            <i class="fa fa-video fa-fw"></i>
            {__("Video uploaded successfully")}
            <div class="float-right">
                <button type="button" class="close js_publisher-attachment-file-remover" data-type="video">
                    <span>&times;</span>
                </button>
            </div>
        </div>
        <div class="publisher-custom-thumbnail">
           {__("Custom Video Thumbnail")}
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
                <input type="hidden" class="js_x-image-input" name="video_thumbnail" value="">
            </div>
        </div>
        <!-- post video -->

        <!-- post audio -->
        <div class="publisher-meta" data-meta="audio">
            <i class="fa fa-music fa-fw"></i>
            {__("Audio uploaded successfully")}
            <div class="float-right">
                <button type="button" class="close js_publisher-attachment-file-remover" data-type="audio">
                    <span>&times;</span>
                </button>
            </div>
        </div>
        <!-- post audio -->

        <!-- post file -->
        <div class="publisher-meta" data-meta="file">
            <i class="fa fa-file-alt fa-fw"></i>
            {__("File uploaded successfully")}
            <div class="float-right">
                <button type="button" class="close js_publisher-attachment-file-remover" data-type="file">
                    <span>&times;</span>
                </button>
            </div>
        </div>
        <!-- post file -->

        <!-- post location -->
        <div class="publisher-meta" data-meta="location">
            <i class="fa fa-map-marker fa-fw"></i>
            <input class="js_geocomplete" type="text" placeholder='{__("Where are you?")}'>
        </div>
        <!-- post location -->

        <!-- post gif -->
        <div class="publisher-meta" data-meta="gif">
            <i class="fa fa-file-image fa-fw"></i>
            <input class="js_publisher-gif-search" type="text" placeholder='{__("Search GIFs")}'>
        </div>
        <!-- post gif -->

        <!-- post feelings -->
        <div class="publisher-meta feelings" data-meta="feelings">
            <div id="feelings-menu-toggle" data-init-text='{__("What are you doing?")}'>{__("What are you doing?")}</div>
            <div id="feelings-data" style="display: none">
                <input type="text" placeholder='{__("What are you doing?")}'>
                <span></span>
            </div>
            <div id="feelings-menu" class="dropdown-menu dropdown-widget">
                <div class="dropdown-widget-body ptb5">
                    <div class="js_scroller">
                        <ul class="feelings-list">
                            {foreach $feelings as $feeling}
                                <li class="feeling-item js_feelings-add" data-action="{$feeling['action']}" data-placeholder="{__($feeling['placeholder'])}">
                                    <div class="icon">
                                        <i class="twa twa-3x twa-{$feeling['icon']}"></i>
                                    </div>
                                    <div class="data">
                                        {__($feeling['text'])}
                                    </div>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
            <div id="feelings-types" class="dropdown-menu dropdown-widget">
                <div class="dropdown-widget-body ptb5">
                    <div class="js_scroller">
                        <ul class="feelings-list">
                            {foreach $feelings_types as $type}
                                <li class="feeling-item js_feelings-type" data-type="{$type['action']}" data-icon="{$type['icon']}">
                                    <div class="icon">
                                        <i class="twa twa-3x twa-{$type['icon']}"></i>
                                    </div>
                                    <div class="data">
                                        {__($type['text'])}
                                    </div>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- post feelings -->
    


        <!-- publisher-footer -->
        <div class="publisher-footer">
            <!-- publisher-buttons -->
            {if $_privacy}
                <!-- privacy -->
                {if $system['default_privacy'] == "me"}
                    <div class="btn-group js_publisher-privacy" data-toggle="tooltip" data-placement="top" data-value="me" title='{__("Shared with: Only Me")}'>
                        <button type="button" class="btn btn-sm btn-info dropdown-toggle" data-toggle="dropdown" data-display="static">
                            <i class="btn-group-icon fa fa-lock mr10"></i><span class="btn-group-text">{__("Only Me")}</span>
                        </button>
                {elseif $system['default_privacy'] == "friends"}
                    <div class="btn-group js_publisher-privacy" data-toggle="tooltip" data-placement="top" data-value="friends" title='{__("Shared with: Friends")}'>
                        <button type="button" class="btn btn-sm btn-info dropdown-toggle" data-toggle="dropdown" data-display="static">
                            <i class="btn-group-icon fa fa-users mr10"></i><span class="btn-group-text">{__("Friends")}</span>
                        </button>
                {else}
                    <div class="btn-group js_publisher-privacy" data-toggle="tooltip" data-placement="top" data-value="public" title='{__("Shared with: Public")}'>
                        <button type="button" class="btn btn-sm btn-info dropdown-toggle" data-toggle="dropdown" data-display="static">
                            <i class="btn-group-icon fa fa-globe mr10"></i><span class="btn-group-text">{__("Public")}</span>
                        </button>
                {/if}
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-item pointer" data-title='{__("Shared with: Public")}' data-value="public">
                            <i class="fa fa-globe mr5"></i>{__("Public")}
                        </div>
                      
                        {if $_handle == 'me'}
                            <div class="dropdown-item pointer" data-title='{__("Shared with: Only Me")}' data-value="me">
                                <i class="fa fa-lock mr5"></i>{__("Only Me")}
                            </div>
                        {/if}
                    </div>
                </div>
                <!-- privacy -->
            {/if}
            <button type="button" class="btn btn-sm btn-primary ml5 js_publisher">{__("Post")}</button>
            <!-- publisher-buttons -->
        </div>
        <!-- publisher-footer -->
    </div>
    <!-- publisher-slider -->
</div>
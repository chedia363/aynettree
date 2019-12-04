{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header 
<div class="page-header bg-1">

    <img class="floating-img d-none d-md-block" src="{$system['system_url']}/content/themes/{$system['theme']}/images/image4.png">
     <img class="floating-img2 d-none d-md-block" src="{$system['system_url']}/content/themes/{$system['theme']}/images/image5.png">
    <div class="crystal c03"></div>
    <div class="circle-2"></div>
    <div class="circle-3"></div>
    <div class="inner">
        <h2>{__("welcome to Quran Society")}</h2>
        
    
    </div>
</div>
page header -->

<!-- page content -->
{if $view == ""}

    <div class="container mt20 {if $user->_logged_in}offcanvas{/if}" style="margin-top: -25px;">
        <div class="row">
            <!-- side panel -->
            {if $user->_logged_in}
                <div class="col-12 d-block d-sm-none offcanvas-sidebar">
                    {include file='_sidebar.tpl'}
                </div>
            {/if}
            <!-- side panel -->

            <!-- content panel -->
            <div class="col-12 {if $user->_logged_in}offcanvas-mainbar{/if}">
                <div class="card carddirectory border-0 shadow">
                    <div class="card-body page-content pb25">
                        <div class="row">
                           <div class="col-sm-6 col-md-6 col-lg-6 mb25">
                                <a href="{$system['system_url']}/explorer/groups" class="directory-card">
                                    <img class="directoryicons" src="{$system['system_url']}/content/themes/{$system['theme']}/images/explorer/directorygroup.svg">
                                    <h5 class="title">{__("Panels")}</h5>
                                   
                                </a>
                            </div>


                            <div class="col-sm-6 col-md-6 col-lg-6 mb25">
                                <a href="{$system['system_url']}/explorer/posts" class="directory-card">
                                    <img class="directoryicons" src="{$system['system_url']}/content/themes/{$system['theme']}/images/explorer/directorynews.svg">
                                    <h5 class="title">{__("News Feed")}</h5>
                                   
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-6 col-lg-6 mb25">
                                <a href="{$system['system_url']}/explorer/users" class="directory-card">
                                    <img class="directoryicons" src="{$system['system_url']}/content/themes/{$system['theme']}/images/explorer/directoryuser.svg">
                                    <h5 class="title">{__("Users")}</h5>
                                   
                                </a>
                            </div>
                           <!-- <div class="col-sm-6 col-md-6 col-lg-4 mb25">
                                <a href="{$system['system_url']}/directory/pages" class="directory-card">
                                    <img class="directoryicons" src="{$system['system_url']}/content/themes/{$system['theme']}/images/explorer/directorygroup.svg">
                                    <h5 class="title">{__("Pages")}</h5>
                                    <p>
                                        {__("Never miss a thing out! Keep in touch with your fans and customers")}
                                    </p>
                                </a>
                            </div> -->
                           
                            <div class="col-sm-6 col-md-6 col-lg-6 mb25">
                                <a href="{$system['system_url']}/explorer/events" class="directory-card">
                                <img class="directoryicons" src="{$system['system_url']}/content/themes/{$system['theme']}/images/explorer/eventexplorer.svg">
                                 <h5 class="title">{__("Events")}</h5>
                                    
                                </a>
                            </div>
                            {if $system['forums_enabled']}
                                <div class="col-sm-6 col-md-6 col-lg-6 mb25">
                                    <a href="{$system['system_url']}/forums" class="directory-card">
                                        <img class="directoryicons" src="{$system['system_url']}/content/themes/{$system['theme']}/images/explorer/forums.png">
                                        <h5 class="title">{__("Forums")}</h5>
                                       
                                    </a>
                                </div>
                            {elseif $system['games_enabled']}
                                <div class="col-sm-6 col-md-6 col-lg-6 mb25">
                                    <a href="{$system['system_url']}/explorer/games" class="directory-card">
                                        <img class="directoryicons" src="{$system['system_url']}/content/themes/{$system['theme']}/images/explorer/photos.png">
                                        <h5 class="title">{__("Games")}</h5>
                                      
                                    </a>
                                </div>
                            {else}
                            
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
            <!-- content panel -->
        </div>
    </div>

{else}

    <div class="container mt20 offcanvas">
        <div class="row">

            <!-- left panel -->
            <div class="col-md-4 col-lg-3 offcanvas-sidebar">
                <div class="card">
                    <div class="card-body with-nav">
                        <ul class="side-nav">
                          <li {if $view == "groups"}class="active"{/if}>
                                <a href="{$system['system_url']}/explorer/groups"> <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/groups.svg">  {__("Panels")}</a>
                            </li>
                            <li {if $view == "posts"}class="active"{/if}>
                                <a href="{$system['system_url']}/explorer/posts">    <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/news.svg"> {__("Posts")}</a>
                            </li>
                            <li {if $view == "users"}class="active"{/if}>
                                <a href="{$system['system_url']}/explorer/users"> <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/users.svg">  {__("Users")}</a>
                            </li>
                           <!-- <li {if $view == "pages"}class="active"{/if}>
                                <a href="{$system['system_url']}/directory/pages"><i class="fa fa-flag fa-fw mr10"></i> {__("Pages")}</a>
                            </li> -->
                          
                            <li {if $view == "events"}class="active"{/if}>
                                <a href="{$system['system_url']}/explorer/events"> <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/event.svg">  {__("Events")}</a>
                            </li>
                            {if $system['games_enabled']}
                                <li {if $view == "games"}class="active"{/if}>
                                    <a href="{$system['system_url']}/explorer/games"><i class="fa fa-gamepad fa-fw mr10"></i> {__("Games")}</a>
                                </li>
                            {/if}
                            <li>
                                <a href="{$system['system_url']}/search"> <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/search.svg"> {__("Search")}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- left panel -->

            <!-- right panel -->
            <div class="col-md-8 col-lg-9 offcanvas-mainbar">
                <div class="row">
                    <!-- center panel -->
                    <div class="col-lg-10">
                        {if $view == "posts"}
                            {if count($rows) > 0}
                                <ul>
                                    {foreach $rows as $post}
                                    {include file='__feeds_post.tpl'}
                                    {/foreach}
                                </ul>
                                {$pager}
                            {else}
                                <p class="text-center text-muted">
                                    {__("No posts to show")}
                                </p>
                            {/if}

                        {elseif $view == "users"}
                            {if count($rows) > 0}
                                <ul>
                                    {foreach $rows as $_user}
                                    {include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"]}
                                    {/foreach}
                                </ul>
                                {$pager}
                            {else}
                                <p class="text-center text-muted">
                                    {__("No users to show")}
                                </p>
                            {/if}

                        {elseif $view == "pages"}
                            {if count($rows) > 0}
                                <ul>
                                    {foreach $rows as $_page}
                                    {include file='__feeds_page.tpl' _tpl="list"}
                                    {/foreach}
                                </ul>
                                {$pager}
                            {else}
                                <p class="text-center text-muted">
                                    {__("No pages to show")}
                                </p>
                            {/if}

                        {elseif $view == "groups"}
                        <div class="groupsblock">
             <div class="btn-group-vertical" role="group" aria-label="Button group with nested dropdown">
                            <a href="{$system['system_url']}/groups/gr1" class="centerblock"><button class="groupssbtn">{__("The Glorious and Performance of Qur'an")}</button></a>
                        <ul>
                            <li>
                                <a    class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Text of the Quran")}
                                </a>
                            </li>
                                <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Science of readings")}
                                </a>
                            </li>
                             <li>
                                <a    class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Draw")}
                                </a>
                            </li>
                             <li>
                                <a    class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Adjustment")}
                                </a>
                            </li>
                            <li>
                                <a    class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Number")}
                                </a>
                            </li>
                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Similarities")}
                                </a>
                            </li>
                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Qur'an Calligraphe")}
                                </a>
                            </li>                            
                                <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Tajwid")}
                                </a>
                            </li>
                                <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Quran recitation")}
                                </a>
                            </li>
                                <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Qur'an Albums")}
                                </a>
                            </li>       
                            <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Qur'an Audios")}
                                </a>
                            </li>      
                            <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Science of Endowment and Getting Started")}
                                </a>
                            </li>  
                            <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Quran Parties")}
                                </a>
                            </li>                              
                            <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Qur'an Memorization")}
                                </a>
                            </li>                                                                   
                                                 

                        </ul> 
                
                     
                          <a href="{$system['system_url']}/groups/gr2" class="centerblock"><button class="groupssbtn">{__("Tafsir and Qur'anic Sciences")}</button></a>
                          <ul>
                            <li>
                                <a class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Topics")}
                                </a>
                            </li>
                            <li>
                                <a class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Strange Quran (Quran Sciences)")}
                                </a>
                            </li>

                            <li>
                                <a class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("reflection in the Quran")}
                                </a>
                            </li>    
                            <li>
                                <a class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Quran Themes")}
                                </a>
                            </li>    
                             <li>
                                <a    class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Provisions of the Qur'an")}
                                </a>
                            </li>                            
                             <li>
                                <a    class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Qur'anic Language")}
                                </a>
                            </li>    


                                <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Quranic rhetoric")}
                                </a>
                            </li>
                        


                                <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Miracles")}
                                </a>
                            </li>
                       
                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Investigations in Quran Sciences")}
                                </a>
                            </li>
                          
                        </ul> 
                    
                       
                            <a href="{$system['system_url']}/groups/gr3"  class="centerblock"><button class="groupssbtn">{__("Different Languages")}</button></a>
                           <ul>
                           <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Translations")}
                                </a>
                            </li>
                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Sign language")}
                                </a>
                            </li>
                              <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Braille")}
                                </a>
                            </li>
                           
                        </ul>
                              <a href="{$system['system_url']}/groups/gr4"  class="centerblock"><button class="groupssbtn">{__("Media")}</button></a>
                             <ul>
                           <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Movies/Documentaries")}
                                </a>
                            </li>

                           <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Calligraphy")}
                                </a>
                            </li>
                           <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Designing")}
                                </a>
                            </li>      
                           <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Montage(Film editing)")}
                                </a>
                            </li>      

                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Competitions")}
                                </a>
                            </li>
                              <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Events ")}
                                </a>
                            </li>
                              <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Flags")}
                                </a>
                            </li>
                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("History of the Quran")}
                                </a>
                            </li>
                           
                        </ul>
                          
                                <a href="{$system['system_url']}/groups/gr5"  class="centerblock"><button class="groupssbtn">{__("Technology")}</button></a>
                                <ul>
                      
                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Programming")}
                                </a>
                            </li>
                             <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Applications")}
                                </a>
                            </li>
                              <li>
                                <a   class="groupsscolor">
                                    <i class="fa fa-genderless" aria-hidden="true"></i>
                                    {__("Products")}
                                </a>
                            </li>
                            </ul>
             </div>

             </div>

                        {elseif $view == "events"}
                            {if count($rows) > 0}
                                <ul>
                                    {foreach $rows as $_event}
                                    {include file='__feeds_event.tpl' _tpl="list"}
                                    {/foreach}
                                </ul>
                                {$pager}
                            {else}
                                <p class="text-center text-muted">
                                    {__("No events to show")}
                                </p>
                            {/if}

                        {elseif $view == "games"}
                            {if count($rows) > 0}
                                <ul>
                                    {foreach $rows as $_game}
                                    {include file='__feeds_game.tpl' _tpl="list"}
                                    {/foreach}
                                </ul>
                                {$pager}
                            {else}
                                <p class="text-center text-muted">
                                    {__("No games to show")}
                                </p>
                            {/if}

                        {/if}
                    </div>
                    <!-- center panel -->

                    <!-- right panel -->
                    <div class="col-lg-2">
                        {include file='_ads_campaigns.tpl'}
                        {include file='_ads.tpl'}
                        {include file='_widget.tpl'}
                    </div>
                    <!-- right panel -->
                </div>
            </div>
            <!-- right panel -->

        </div>
    </div>

{/if}
<!-- page content -->

{include file='_footer.tpl'}
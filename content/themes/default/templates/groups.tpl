{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container mt20 offcanvas">
    <div class="row">

        <!-- side panel -->
        <div class="col-md-4 col-lg-3 offcanvas-sidebar js_sticky-sidebar">
            {include file='_sidebar.tpl'}
        </div>
        <!-- side panel -->

        <!-- content panel -->
        <div class="col-md-8 col-lg-9 offcanvas-mainbar">

            <!-- tabs -->
            <div class="content-tabs rounded-sm shadow-sm clearfix">
            <ul>
                    <li {if $view == ""}class="active"{/if}>
                        <a href="{$system['system_url']}/groups">{__("Panels")}</a>
                    </li>
                    {if $user->_data['user_group'] < 3 && $system['groups_enabled']}
                    <li {if $view == "manage"}class="active"{/if}>
                        <a href="{$system['system_url']}/groups/manage">{__("My panels")}</a>
                    </li>
                    {/if}
                    <li {if $view == "joined"}class="active"{/if}>
                        <a href="{$system['system_url']}/groups/joined">{__("Joined Panels")}</a>
                    </li>
                    
                </ul>
                {if $user->_data['user_group'] < 2 && $system['groups_enabled']}
                    <div class="mt10 float-right">
                        <button class="btn btn-sm btn-success d-none d-lg-block" data-toggle="modal" data-url="#create-group">
                             <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/story.svg"> {__("Create your group")}
                        </button>
                        <button class="btn btn-sm btn-icon btn-success d-block d-lg-none" data-toggle="modal" data-url="#create-group">
                            <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/story.svg">
                        </button>
                    </div>
                {/if}
            </div>
            <!-- tabs -->
            {if $view == ""}
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
            

            {else}
            <!-- content -->
            <div>
                {if $groups}
                    <ul class="row">
                        {foreach $groups as $_group}
                            {include file='__feeds_group.tpl' _tpl='box'}
                        {/foreach}
                    </ul>

                    <!-- see-more -->
                    {if count($groups) >= $system['max_results_even']}
                        <div class="alert alert-post see-more js_see-more" data-get="{$get}" data-uid="{$user->_data['user_id']}">
                            <span>{__("See More")}</span>
                            <div class="loader loader_small x-hidden"></div>
                        </div>
                    {/if}
                    <!-- see-more -->
                {else}
                    <p class="text-center text-muted">
                        {__("No Panels to show")} 
                    </p>
                {/if}
            </div>
            {/if}
            <!-- content -->

        </div>
        <!-- content panel -->
        <!--{var_dump()}-->
                            
    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}
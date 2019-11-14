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
                            <i class="fa fa-plus-circle mr5"></i>{__("Create your group")}
                        </button>
                        <button class="btn btn-sm btn-icon btn-success d-block d-lg-none" data-toggle="modal" data-url="#create-group">
                            <i class="fa fa-plus-circle"></i>
                        </button>
                    </div>
                {/if}
            </div>
            <!-- tabs -->
            {if $view == ""}
            <div class="groupsguran">
                <div class="row">
                    <div class="col-md-12 col-lg-6">
                        <div class="ui-box boxgroup">
                            <div class="mt10">
                                <div> <h3 class="titlegroupay">{__("The Glorious Qur'an")}</h3></div>
                                
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr1"class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Tajwid")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr2" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Qira'at (Modes of Qur’anic Reading)")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr3"class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Qur'an Albums")}
                                        </a>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
                      <div class="col-md-12 col-lg-6">
                        <div class="ui-box boxgroup">
                            <div class="mt10">
                                <div> <h3 class="titlegroupay">{__("Tafsir and Qur'anic Sciences")}</h3></div>
                                
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr4" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Tafsir (Exegesis)")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr5" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Qur'anic Sciences")}
                                        </a>
                                    </li>
                                 
                                </ul>
                             </div>
                        </div>
                    </div>
                     
                </div>
                <div class="row">
                <div class="col-md-12 col-lg-6">
                        <div class="ui-box boxgroup">
                            <div class="mt10">
                               
                                 <div> <h3 class="titlegroupay">{__("Different Languages")}</h3></div>
                                
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr6" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Qur'an Translations")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr7" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Sign Language")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr8" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Braille")}
                                        </a>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-6">
                        <div class="ui-box boxgroup">
                            <div class="mt10">
                              
                                <div> <h3 class="titlegroupay">{__("Media")}</h3></div>
                                
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr9" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Movie Making")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr10" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Competitions")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr11" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Events ")}
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr12" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Eminent Persons")}
                                        </a>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
                </div>

                 <div class="row">
                   
                      <div class="col-md-12 col-lg-6">
                        <div class="ui-box boxgroup">
                            <div class="mt10">
                             
                                <div> <h3 class="titlegroupay">{__("Skills")}</h3></div>
                                
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr13" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Calligraphy")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr14" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Ornamentation")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr15" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Designing")}
                                        </a>
                                    </li>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr16" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Montage (Film editing)")}
                                        </a>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
                      <div class="col-md-12 col-lg-6">
                        <div class="ui-box boxgroup">
                            <div class="mt10">
                                
                                <div> <h3 class="titlegroupay">{__("Technology")}</h3></div>
                                
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}/groups/gr17" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Programs, Applications")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr18" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Programming")}
                                        </a>
                                    </li>
                                        <li>
                                        <a href="{$system['system_url']}/groups/gr19" class="groupcolor">
                                            <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Technology Products")}
                                        </a>
                                    </li>
                                </ul>
                             </div>
                        </div>
                    </div>
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
                        {__("No groups to show")}
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
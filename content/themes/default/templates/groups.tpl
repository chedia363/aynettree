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
                        <a href="{$system['system_url']}/groups">{__("Gate panels")}</a>
                    </li>
                    {if $user->_data['user_group'] < 3 && $system['groups_enabled']}
                    <li {if $view == "manage"}class="active"{/if}>
                        <a href="{$system['system_url']}/groups/manage">{__("My panels")}</a>
                    </li>
                    {/if}
                    <li {if $view == "joined"}class="active"{/if}>
                        <a href="{$system['system_url']}/groups/joined">{__("Joined Panels")}</a>
                    </li>
                     <li {if $view == "get_all"}class="active"{/if}>
                        <a href="{$system['system_url']}/groups/get_all">{__("All Panels")}</a>
                    </li>
                </ul>
                {if $user->_data['user_id'] < 2 && $system['groups_enabled']}
                    <div class="mt10 float-right">
                        <button class="btn btn-sm btn-success " data-toggle="modal" data-url="#create-group">
                             <!-- <img class="iconspost" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/addgroup.svg"> --> {__("Create your group")}
                        </button>
                      
                    </div>
                {/if}
            </div>
            <!-- tabs -->
            {if $view == ""}
            <div class="groupsblock text-center ">
             <div class="btn-group-vertical" role="group" aria-label="Button group with nested dropdown">
                            <a href="{$system['system_url']}/groups/gr1" class="centerblock"><button class="groupssbtn">{__("The Glorious and Performance of Qur'an")}</button></a>
                         
                
                     
                          <a href="{$system['system_url']}/groups/gr2" class="centerblock"><button class="groupssbtn">{__("Tafsir and Qur'anic Sciences")}</button></a>
                          
                    
                       
                            <a href="{$system['system_url']}/groups/gr3"  class="centerblock"><button class="groupssbtn">{__("Different Languages")}</button></a>
                       
                              <a href="{$system['system_url']}/groups/gr4"  class="centerblock"><button class="groupssbtn">{__("Media ")}</button></a>
                             
                          
                                <a href="{$system['system_url']}/groups/gr5"  class="centerblock"><button class="groupssbtn">{__("Technology")}</button></a>
                                
             </div>

             </div>
            {elseif $view == "get_all"}

              <!-- content -->
            <div>
                {if $groups1 || $groups2|| $groups3|| $groups4|| $groups5}
                <a href="{$system['system_url']}/groups/gr1"> <button class="btn btn-sm btn-success ">
                 <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/addgroup.svg">
                {__("The Glorious and Performance of Qur'an")}
                </button></a>

                <a href="{$system['system_url']}/groups/gr1/Subgroups">
                    <button class="alert alert-info see-more mt20 js_see-more" style="transform: translate(-550px, 2px);">
                        {__("See All")}
                    </button>
                </a>                
                <br>
                
            <ul class="row">
                       
                            {foreach $groups1 as $_group}
    
                                {include file='__feeds_Allgroup.tpl' _tpl='box'}
    
                            {/foreach}

                         
            </ul>
            
    <a href="{$system['system_url']}/groups/gr2">            
     <button class="btn btn-sm btn-success">
         <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/addgroup.svg">
         {__("Tafsir and Qur'anic Sciences")}
     </button>
    </a>

    <a href="{$system['system_url']}/groups/gr2/Subgroups">
     <button class="alert alert-info see-more mt20 js_see-more" style="transform: translate(-550px, 2px);">
         {__("See All")}
     </button>
    </a>
    <br>
            <ul class="row">
                      {foreach $groups2 as $_group}

                            {include file='__feeds_Allgroup.tpl' _tpl='box'}

                        {/foreach}


  </ul>

  
<a href="{$system['system_url']}/groups/gr3">
 <button class="btn btn-sm btn-success ">
     <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/addgroup.svg">
{__("Different Languages")}
 </button></a>
<a href="{$system['system_url']}/groups/gr3/Subgroups">
  <button class="alert alert-info see-more mt20 js_see-more" style="transform: translate(-608px, 2px);">
      {__("See More")}
  </button>
</a>
 <br>
  <ul class="row">
                       {foreach $groups3 as $_group}

                            {include file='__feeds_Allgroup.tpl' _tpl='box'}

                        {/foreach}



</ul>



 <a href="{$system['system_url']}/groups/gr4">
 <button class="btn btn-sm btn-success ">
     <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/addgroup.svg">
    {__("Media ")}
 </button></a>
                     <a href="{$system['system_url']}/groups/gr4/Subgroups">
                     <button class="alert alert-info see-more mt20 js_see-more" style="transform: translate(-550px, 2px);">
                         {__("See More")}
                     </button>
                    </a>
 <br>
<ul class="row">

                        {foreach $groups4 as $_group}

                            {include file='__feeds_Allgroup.tpl' _tpl='box'}

                        {/foreach}



</ul>



  <a href="{$system['system_url']}/groups/gr5">
 <button class="btn btn-sm btn-success ">
     <img class="iconspost" src="{$system['system_url']}/content/themes/default/images/icons/addgroup.svg">
    {__("Technology")}
 </button></a>
    <a href="{$system['system_url']}/groups/gr5/Subgroups">
     <button class="alert alert-info see-more mt20 js_see-more" style="transform: translate(-598px, 2px);">
         {__("See More")}
     </button>
    </a>   
 <br>
<ul class="row">

                        {foreach $groups5 as $_group}

                            {include file='__feeds_Allgroup.tpl' _tpl='box'}

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
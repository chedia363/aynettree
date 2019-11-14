{include file='_head.tpl'}
{include file='_header.tpl'}
<!-- page content -->
{if !$user->_logged_in}
<div class="slider--container">
    <div class="slider-content">
        <div class="container pt10 offcanvas">
       		<div class="slider--heading">
                <h1 class="titleaynat">{__("Welcome To Aaynet")}</h1>
                <p class="titleaynatt">{__("Learn about the benefits of joining aaynet.")}</p>
                <div class="title-icons text-justify">
                    <img class="iconsblanc" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/groupsblancc.svg"> <span>{__("Specialit Panels")} </span><br> <br>
                    <img class="iconsblanc" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/dailysession.svg"> <span>{__("Daily sessions")} </span><br> <br>
                    <img class="iconsblanc" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/membersblanc.svg"> <span>{__("Scholars and Skilled Specialists")} </span>
                </div>
                <div class="visitor-btn">
                    <a href="{$system['system_url']}/signin" class="btn btn-defaultv">    <img class="iconsblanc" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/signin.svg">  {__("Sign In")}</a>
                </div>
                <div class="visitor-btn">
                    <a href="{$system['system_url']}/signup" class="btn btn-defaultv">  <img class="iconsblanc" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/signup.svg">  {__("Sign Up")}</a>
                </div>
                 <div class="visitor-btnn">
                    <a href="{$system['system_url']}/directory/posts" class="btn btn-defaultvisitor">  <img class="iconsblanc"  src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/visitor.svg">  {__("Visitor")}</a>
                </div>
		    </div>
        </div>
      
     </div>
    <img class="slider--image" src="{$system['system_url']}/content/themes/{$system['theme']}/images/gaynet.jpg" alt="winter-01" />
    <img class="slider--image" src="{$system['system_url']}/content/themes/{$system['theme']}/images/gaynet1.jpg" alt="winter-02" />
    <img class="slider--image" src="{$system['system_url']}/content/themes/{$system['theme']}/images/gaynet3.jpg" alt="winter-03" />
</div>
 {include file='_footer.links.tpl'}
{else}
    <div class="container mt20 offcanvas">
        <div class="row">

            <!-- side panel -->
            <div class="col-md-4 col-lg-3 offcanvas-sidebar js_sticky-sidebar">
                {include file='_sidebar.tpl'}
                <!-- addcardsection -->
               <!-- <div class="card">
                    <div class="card-body with-nav">
                        <ul class="side-nav">
                            <li {if $page== "groups"}class="active"{/if}>
                                <a href="{$system['system_url']}">
                                    {__("Shortcuts")}
                                </a>
                                <div>
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}">
                                            {__("Your reply today")}
                                        </a>
                                    </li>
                                </ul>
                                </div>
                            </li>
                        </ul>
                        <div class="card cardAyQur">
                         <p class="text-justify">{__("وَتَرَى ٱلشَّمْسَ إِذَا طَلَعَت تَّزَٰوَرُ عَن كَهْفِهِمْ ذَاتَ ٱلْيَمِينِ وَإِذَا غَرَبَت تَّقْرِضُهُمْ ذَاتَ ٱلشِّمَالِ وَهُمْ فِى فَجْوَةٍۢ مِّنْهُ ۚ ذَٰلِكَ مِنْ ءَايَٰتِ ٱللَّهِ ۗ مَن يَهْدِ ٱللَّهُ فَهُوَ ٱلْمُهْتَدِ ۖ وَمَن يُضْلِلْ فَلَن تَجِدَ لَهُۥ وَلِيًّۭا مُّرْشِدًۭا")} </p>
                         
                        </div>
                         <ul class="side-nav">
                            <div>
                                <ul>
                                    <li>
                                        <a href="{$system['system_url']}">
                                          <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Meanings of words")}
                                        </a>
                                    </li>
                                     <li>
                                        <a href="{$system['system_url']}">
                                          <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Causes of descent")}
                                        </a>
                                    </li>
                                     <li>
                                        <a href="{$system['system_url']}">
                                          <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Stories of the Holy Quran")}
                                        </a>
                                    </li>
                                    <li>
                                      
                                        <a href="{$system['system_url']}">
                                          <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("Latest boards")}
                                        </a>
                                    </li>
                                     <li>
                                        <a href="{$system['system_url']}">
                                          <i class="fa fa-genderless" aria-hidden="true"></i>
                                            {__("The most interactive councils")}

                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </ul>

                    </div>
                <!-- </div> -->
                  <!-- addcardsection -->
            </div>
            <!-- side panel -->

            <!-- content panel -->
            <div class="col-md-8 col-lg-9 offcanvas-mainbar">
                <div class="row">
                    <!-- center panel -->
                    <div class="col-lg-8">

                        <!-- announcments -->
                        {include file='_announcements.tpl'}
                        <!-- announcments -->

                        {if $view == ""}

                            <!-- stories -->
                            {if $system['stories_enabled']}
                                <div class="card">
                                    <div class="card-header bg-transparent border-bottom-0">
                                        <strong class="text-muted">{__("Stories")}</strong>
                                        <div class="d-none d-sm-block text-muted pointer float-right">
                                            <i class="fa fa-info-circle" data-toggle="tooltip" data-placement="top" title='{__("Stories are photos and videos that only last 24 hours")}'></i>
                                        </div>
                                    </div>
                                    <div class="card-body pt5 stories-wrapper">
                                        <div id="stories" data-json='{$stories["json"]}'>
                                            <div class="add-story" data-toggle="modal" data-url="posts/story.php?do=create">
                                                <div class="img" style="background-image:url({$user->_data['user_picture']});">
                                                </div>
                                                <div class="add">
                                                    <i class="fa fa-plus-circle"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {/if}
                            <!-- stories -->

                            <!-- publisher -->
                          
                            <div class="publisher" style="display: none;"> </div>
                            <!-- publisher -->

                            <!-- boosted post -->
                            {if $boosted_post}
                                {include file='_boosted_post.tpl' post=$boosted_post}
                            {/if}
                            <!-- boosted post -->

                            <!-- posts -->
                            {include file='_posts.tpl' _get="newsfeed"}
                            <!-- posts -->

                        {elseif $view == "popular"}
                            <!-- saved posts -->
                            {include file='_posts.tpl' _get="popular" _title=__("Popular Posts")}
                            <!-- saved posts -->

                        {elseif $view == "saved"}
                            <!-- saved posts -->
                            {include file='_posts.tpl' _get="saved" _title=__("Saved Posts")}
                            <!-- saved posts -->

                        {elseif $view == "articles"}
                            <!-- articles posts -->
                            {include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="article" _title=__("My Articles")}
                            <!-- articles posts -->

                        {elseif $view == "products"}
                            <!-- products posts -->
                            {include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="product" _title=__("My Products")}
                            <!-- products posts -->

                        {elseif $view == "boosted_posts"}
                            {if $user->_is_admin || $user->_data['user_subscribed']}
                                <!-- boosted posts -->
                                {include file='_posts.tpl' _get="boosted" _title=__("My Boosted Posts")}
                                <!-- boosted posts -->
                            {else}
                                <!-- upgrade -->
                                <div class="alert alert-warning">
                                    <div class="icon">
                                        <i class="fa fa-id-card fa-2x"></i>
                                    </div>
                                    <div class="text">
                                        <strong>{__("Membership")}</strong><br>
                                        {__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a href="{$system['system_url']}/packages">{__("Here")}</a>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <a href="{$system['system_url']}/packages" class="btn btn-primary"><i class="fa fa-rocket mr5"></i>{__("Upgrade to Pro")}</a>
                                </div>
                                <!-- upgrade -->
                            {/if}

                        {elseif $view == "boosted_pages"}
                            {if $user->_is_admin || $user->_data['user_subscribed']}
                                <div class="card">
                                    <div class="card-header">
                                        <strong>{__("My Boosted Pages")}</strong>
                                    </div>
                                    <div class="card-body">
                                        {if $boosted_pages}
                                            <ul>
                                                {foreach $boosted_pages as $_page}
                                                    {include file='__feeds_page.tpl' _tpl="list"}
                                                {/foreach}
                                            </ul>

                                            {if count($boosted_pages) >= $system['max_results_even']}
                                            <!-- see-more -->
                                            <div class="alert alert-info see-more js_see-more" data-get="boosted_pages">
                                                <span>{__("See More")}</span>
                                                <div class="loader loader_small x-hidden"></div>
                                            </div>
                                            <!-- see-more -->
                                            {/if}
                                        {else}
                                            <p class="text-center text-muted mt10">
                                                {__("No pages to show")}
                                            </p>
                                        {/if}
                                    </div>
                                </div>
                            {else}
                                <!-- upgrade -->
                                <div class="alert alert-warning">
                                    <div class="icon">
                                        <i class="fa fa-id-card fa-2x"></i>
                                    </div>
                                    <div class="text">
                                        <strong>{__("Membership")}</strong><br>
                                        {__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a href="{$system['system_url']}/packages">{__("Here")}</a>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <a href="{$system['system_url']}/packages" class="btn btn-primary"><i class="fa fa-rocket mr5"></i>{__("Upgrade to Pro")}</a>
                                </div>
                                <!-- upgrade -->
                            {/if}

                        {/if}
                    </div>
                    <!-- center panel -->

                    <!-- right panel -->
                    <div class="col-lg-4 js_sticky-sidebar">
                        
                        <!-- pro users -->
                        {if $pro_members}
                            <div class="card bg-gradient-indigo border-0">
                                <div class="card-header ptb20 bg-transparent border-bottom-0">
                                    {if $system['packages_enabled'] && !$user->_data['user_subscribed']}
                                        <div class="float-right">
                                            <small><a class="text-white text-underline" href="{$system['system_url']}/packages">{__("Upgrade")}</a></small>
                                        </div>
                                    {/if}
                                    <h6 class="pb0"><i class="fa fa-user-shield mr5"></i> {__("Pro Users")}</h6>
                                </div>
                                <div class="card-body pt0 plr5">
                                    <div class="pro-box-wrapper {if count($pro_members) > 3}js_slick{else}full-opacity{/if}">
                                        {foreach $pro_members as $_member}
                                            <a class="user-box text-white" href="{$system['system_url']}/{$_member['user_name']}">
                                                <img alt="{$_member['user_firstname']} {$_member['user_lastname']}" src="{$_member['user_picture']}" />
                                                <div class="name" title="{$_member['user_firstname']} {$_member['user_lastname']}">
                                                    {$_member['user_firstname']} {$_member['user_lastname']}
                                                </div>
                                            </a>
                                        {/foreach}
                                    </div>
                                </div>
                            </div>
                        {/if}
                        <!-- pro users -->

                        <!-- pro pages -->
                        {if $promoted_pages}
                            <div class="card bg-gradient-teal border-0">
                                <div class="card-header ptb20 bg-transparent border-bottom-0">
                                    {if $system['packages_enabled'] && !$user->_data['user_subscribed']}
                                        <div class="float-right">
                                            <small><a class="text-white text-underline" href="{$system['system_url']}/packages">{__("Upgrade")}</a></small>
                                        </div>
                                    {/if}
                                    <h6 class="pb0"><i class="fa fa-flag-checkered mr5"></i> {__("Pro Pages")}</h6>
                                </div>
                                <div class="card-body pt0 plr5">
                                    <div class="pro-box-wrapper {if count($promoted_pages) > 3}js_slick{else}full-opacity{/if}">
                                        {foreach $promoted_pages as $_page}
                                            <a class="user-box text-white" href="{$system['system_url']}/pages/{$_page['page_name']}">
                                                <img alt="{$_page['page_title']}" src="{$_page['page_picture']}" />
                                                <div class="name" title="{$_page['page_title']}">
                                                    {$_page['page_title']}
                                                </div>
                                            </a>
                                        {/foreach}
                                    </div>
                                </div>
                            </div>
                        {/if}
                        <!-- pro pages -->

                        <!-- trending -->
                        {if $trending_hashtags}
                            <div class="card bg-gradient-red border-0">
                                <div class="card-header pt20 pb10 bg-transparent border-bottom-0">
                                    <h6 class="mb0"><i class="fa fa-fire mr5"></i> {__("Trending")}</h6>
                                </div>
                                <div class="card-body pt0">
                                    {foreach $trending_hashtags as $hashtag}
                                        <a class="trending-item" href="{$system['system_url']}/search/hashtag/{$hashtag['hashtag']}">
                                            <span class="hash">
                                                #{$hashtag['hashtag']}
                                            </span>
                                            <span class="frequency">
                                                {$hashtag['frequency']} {__("Posts")}
                                            </span>
                                        </a>
                                    {/foreach}
                                </div>
                            </div>
                        {/if}
                        <!-- trending -->

                        {include file='_ads_campaigns.tpl'}
                        {include file='_ads.tpl'}
                        {include file='_widget.tpl'}

                        <!-- friend suggestions -->
                        {if count($user->_data['new_people']) > 0}
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="{$system['system_url']}/people">{__("See All")}</a></small>
                                    </div>
                                    {__("Friend Suggestions")}
                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        {foreach $user->_data['new_people'] as $_user}
                                        {include file='__feeds_user.tpl' _tpl="list" _connection="add" _small=true}
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>
                        {/if}
                         <!-- friend suggestions -->

                        <!-- suggested pages -->
                        {if count($new_pages) > 0}
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="{$system['system_url']}/pages">{__("See All")}</a></small>
                                    </div>
                                    {__("Suggested Pages")}
                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        {foreach $new_pages as $_page}
                                        {include file='__feeds_page.tpl' _tpl="list"}
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>
                        {/if}
                        <!-- suggested pages -->

                        <!-- Suggested panels -->
                        {if count($new_groups) > 0}
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="{$system['system_url']}/groups">{__("See All")}</a></small>
                                    </div>
                                    {__("Suggested panels")}
                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        {foreach $new_groups as $_group}
                                        {include file='__feeds_group.tpl' _tpl="list"}
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>
                        {/if}
                        <!-- Suggested panels -->

                        <!-- suggested events -->
                        {if count($new_events) > 0}
                            <div class="card">
                                <div class="card-header bg-transparent">
                                    <div class="float-right">
                                        <small><a href="{$system['system_url']}/events">{__("See All")}</a></small>
                                    </div>
                                    {__("Suggested Events")}
                                </div>
                                <div class="card-body with-list">
                                    <ul>
                                        {foreach $new_events as $_event}
                                        {include file='__feeds_event.tpl' _tpl="list" _small=true}
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>
                        {/if}
                        <!-- suggested events -->
                         <!-- invitation widget -->
                         {if $system['invitation_widget_enabled']}
                            <div class="card">
                                <div class="card-header bg-transparent">
                                     <img class="iconsfriend" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/friend.svg" class="mr5"> {__("Invite Your Friends")}
                                </div>
                                <div class="card-body with-form">
                                    <form class="js_ajax-forms" data-url="users/invitation.php">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="email" placeholder='{__("Email")}'>
                                                <div class="input-group-append">
                                                    <button type="submit" name="submit" class="btn btn-primary plr20"><i class="fas fa-paper-plane"></i></button>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- success -->
                                        <div class="alert alert-success mb0 x-hidden"></div>
                                        <!-- success -->

                                        <!-- error -->
                                        <div class="alert alert-danger mb0 x-hidden"></div>
                                        <!-- error -->
                                    </form>
                                </div>
                            </div>
                        {/if}
                        <!-- invitation widget -->

                        <!-- mini footer -->
                        {if count($user->_data['new_people']) > 0 || count($new_pages) > 0 || count($new_groups) > 0 || count($new_events) > 0}
                            <div class="mtb20 plr10 d-none d-sm-block">
                                <div class="col-12 mb5">
                                  <div class="row footer1 {if $page == 'index' && !$user->_logged_in}border-top-0{/if}">
	     <div class="col-sm-12 text-center" style="" ><span style="color: #035d03;font-weight: bold;">{__("Sponsored by :<br>His Royal Highness Prince Meteb Bin Abdulaziz Al Saud and his sons")}</span></div>



</div>
	<div class="row footer2">
        <div class="col-sm-12 text-center">
    
           	<!-- { if count($static_pages) > 0 } 
				 { foreach $static_pages as $static_page }
					<a href="{$system['system_url']}/static/{$static_page['page_url']}">
						{ __($static_page['page_title'])}
					</a>{if !$static_page@last} · {/if}
				{ /foreach }
			-->
			{if $system['directory_enabled']}
				 
				<a href="{$system['system_url']}/explorer"  >
					{__("Explorer")}
				</a>
				|
			{/if}
		
		
			{if $system['market_enabled']}
                 |
                <a href="{$system['system_url']}/market"  >
                    {__("Market")}
                </a>
            {/if}
            {if $system['forums_enabled']}
                 |
                <a href="{$system['system_url']}/forums"  >
                    {__("Forums")}
                </a>
            {/if}

			{if $system['language']['title']=='English'}

			   

			    <a href="{$system['system_url']}/static/about"  >
					{__("About")}
				</a>

				|
				<a href="{$system['system_url']}/static/terms"  >
					{__("Terms")}
				</a>
				|
				<a href="{$system['system_url']}/static/privacy"  >
					{__("Privacy")}
				</a>
				|
				<a href="{$system['system_url']}/static/IntellectualProperty"  >
					{__("IntellectualProperty")}
				</a>

				{if $system['contact_enabled']}
				 | 
				<a href="{$system['system_url']}/contacts"  >
					{__("Contacts")}
				</a>
				|
			{/if}
				
				<a href="https://docs.google.com/forms/d/e/1FAIpQLSfw6Ct-qiKVXFsSpLD_v2mHnVgtHc37ig6-vn2I5fhvmwCoDg/viewform" target="_blank" >
					{__("Volunteers")}
				</a>
				|
				<a href="https://docs.google.com/forms/d/e/1FAIpQLSfUpCxOqXw4AqRPFGQ6CtKaNLWNsVnrtAu3m0ccoXfylvVu6w/viewform" target="_blank" >
					{__("Careers")}
				</a>
				


			{elseif $system['language']['code']=='ar_sa'}
                 
			    <a href="{$system['system_url']}/static/About_Ar"  > 
					{__("About_Ar")}
				</a>
                 |
				<a href="{$system['system_url']}/static/terms_Ar"  >
					{__("terms_Ar")}
				</a>
				|
				<a href="{$system['system_url']}/static/privacy_Ar"  >
					{__("privacy_Ar")}
				</a>
				|
				<a href="{$system['system_url']}/static/IntellectualPropertyAr"  >
					{__("IntellectualPropertyAr")}
				</a>
				
				{if $system['contact_enabled']}
				 | 
				<a href="{$system['system_url']}/contacts"  >
					{__("Contacts")}
				</a>
			{/if}
			|
				<a href="https://docs.google.com/forms/d/e/1FAIpQLSfw6Ct-qiKVXFsSpLD_v2mHnVgtHc37ig6-vn2I5fhvmwCoDg/viewform" target="_blank" >
					{__("Volunteers")}
				</a>
				|
				<a href="https://docs.google.com/forms/d/e/1FAIpQLSfUpCxOqXw4AqRPFGQ6CtKaNLWNsVnrtAu3m0ccoXfylvVu6w/viewform" target="_blank" >
					{__("Careers")}
				</a>
				
				
			{/if}


			
<br/>
<hr/>
		<span style="color: #7f838a;font-weight: bold;"> &copy; 2020 {__("Aaynet")} · </span>
		</div>
		
		
	</div>
   
                                <div class="col-12 text-center">

                                 
			
                                </div>
                            </div>
                        {/if}
                        <!-- mini footer -->
                        
                    </div>
                    <!-- right panel -->
                </div>
            </div>
            <!-- content panel -->

        </div>
    </div>

{/if}
<!-- page content -->

                   





{include file='_footer.tpl'}
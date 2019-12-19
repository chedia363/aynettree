<div class="card">
    <div class="card-body with-nav">
        <ul class="main-side-nav">
            <!-- basic -->
            <li>

         

                   <a href="{$system['system_url']}/{$user->_data['user_name']}">
                        <img class="rounded-circle" src="{$user->_data.user_picture}" alt="{$user->_data['user_firstname']} {$user->_data['user_lastname']}">
                        <span style="color: #29b6ac;">{$user->_data['user_firstname']} {$user->_data['user_lastname']}</span>
                    </a>
                
            </li>




            <li>

         

                   <a href="#Blogging" data-toggle="collapse" aria-expanded="false">
                    <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/blogs.svg">
                        <span style="color: #29b6ac;">  {__("Blogging")}</span>
                    </a>
                    <div class='collapse hide' id="Blogging">
                        <ul>
                            <li {if $page== "groups"}class="active"{/if}>
                              <a href="{$system['system_url']}/groups">
                                  <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/groups.svg">
                                  {__("Panels ")}
                              </a>
                            </li>
                            <!--<li>
                              <a href="{$system['system_url']}">
                                  <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/opengroup.svg">
                                  {__("Open Panels")}
                              </a>
                            </li>-->
                            <li {if $page== "Stories"}class="active"{/if}>
                               <a href="{$system['system_url']}/stories.php">
                                   <img  src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/taranim.svg" class="iconspost">
                                   {__("Stories")}
                               </a>
                            </li>                           

                        </ul>
                    </div>  
            </li>


            <li {if $page== "index" && ($view == "" || $view == "discover" || $view == "popular")}class="active"{/if}>
                {if !$system['popular_posts_enabled'] && !$system['discover_posts_enabled']}
                    <a href="{$system['system_url']}">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/news.svg">
                        {__("News Feed")}
                    </a>
                {else}
                    <a href="#newsfeed" data-toggle="collapse" {if $page== "index" && ($view == "" || $view == "discover" || $view == "popular")}aria-expanded="false"{/if}>
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/news.svg">
                        {__("News Feed")}
                    </a>
                    <div class='collapse {if $page== "index" && ($view == "" || $view == "discover" || $view == "popular")}hide{/if}' id="newsfeed">
                        <ul>
                            <li {if $page== "index" && $view == ""}class="active"{/if}>
                                <a href="{$system['system_url']}">
                                    {__("Recent Updates")}
                                </a>
                            </li>
                            {if $system['popular_posts_enabled']}
                                <li {if $page== "index" && $view == "popular"}class="active"{/if}>
                                    <a href="{$system['system_url']}/popular">
                                         {__("Popular Posts")}
                                    </a>
                                </li>
                            {/if}

                            <li {if $page== "index" && $view == "saved"}class="active"{/if}>
                              <a href="{$system['system_url']}/saved">
                                  <!-- <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/particip.svg">
                                 -->
                                  {__("Saved Posts")}
                              </a>
                            </li>


                           <!-- {if $system['discover_posts_enabled']}
                                <li {if $page== "index" && $view == "discover"}class="active"{/if}>
                                    <a href="{$system['system_url']}/discover">
                                         {__("Discover Posts")}
                                    </a>
                                </li>
                            {/if}
                            -->
                        </ul>
                    </div>
                {/if}
            </li>









           

               {if $system['events_enabled']}
                <li {if $page== "events"}class="active"{/if}>
                    <a href="{$system['system_url']}/events">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/event.svg">
                        {__("Events")}
                    </a>
                </li>
            {/if}

            <li {if $page== "people"}class="active"{/if}>
                <a href="{$system['system_url']}/people">
                    <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/members.svg">
                    {__("People")}
                </a>
            </li>

         

            {if $user->_data['user_group'] == 1}
                <li>
                    <a href="{$system['system_url']}/admincp">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/adminpanel.svg">
                        {__("Admin Panel")}
                    </a>
                </li>
            {/if}
            <!-- basic -->

            <li>
                <a href="{$system['system_url']}/messages">
                    <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/message.svg">
                    {__("Messages")}
                </a>
            </li>

            <li>
                <a href="{$system['system_url']}/settings">
                    <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/setting.svg">
                    {__("Settings")}
                </a>
            </li>

            <!-- favorites
            <li class="ptb5">
                <strong><small class="text-muted">{__("favorites")|upper}</small></strong>
            </li> -->

           

            {if $system['blogs_enabled']}
                <li {if $page== "index" && $view == "articles"}class="active"{/if}>
                    <a href="{$system['system_url']}/articles">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/article.svg">
                        {__("My Articles")}
                    </a>
                </li>
            {/if}
            
           <!-- {if $system['market_enabled']}
                <li {if $page== "index" && $view == "products"}class="active"{/if}>
                    <a href="{$system['system_url']}/products">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/products.png">
                        {__("My Products")}
                    </a>
                </li>
            {/if} -->



            <!-- {if $system['memories_enabled']}
                <li {if $page== "index" && $view == "memories"}class="active"{/if}>
                    <a href="{$system['system_url']}/memories">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/memories.png">
                        {__("Memories")}
                    </a>
                </li>
            {/if} -->
            <!-- favorites -->

            <!-- advertising -->
            {if $system['ads_enabled'] || $system['packages_enabled']}
                <li class="ptb5">
                    <small class="text-muted">{__("Advertising")|upper}</small>
                </li>

                {if $system['ads_enabled']}
                    <li {if $page== "ads"}class="active"{/if}>
                        <a href="{$system['system_url']}/ads">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/ads_manager.png">
                            {__("Ads Manager")}
                        </a>
                    </li>
                {/if}

                {if $system['packages_enabled']}
                    <li {if $page== "index" && $view == "boosted_posts"}class="active"{/if}>
                        <a href="{$system['system_url']}/boosted/posts">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/boosted_posts.png">
                            {__("Boosted Posts")}
                        </a>
                    </li>
                    
                    <li {if $page== "index" && $view == "boosted_pages"}class="active"{/if}>
                        <a href="{$system['system_url']}/boosted/pages">
                            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/page.svg">
                            {__("Boosted Pages")}
                        </a>
                    </li>
                {/if}
            {/if}
            <!-- advertising -->

            <!-- explore -->
           


            <!--
            <li {if $page== "pages"}class="active"{/if}>
                <a href="{$system['system_url']}/pages">
                    <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/pages.svg">
                    {__("Pages")}
                </a>
            </li>
            -->




   <!-- <li {if $page== "stories"}class="active"{/if}>
     <a href="{$system['system_url']}/stories.php"><img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/group.svg">{__("Stories")}</a>
   </li> -->

    <!--<li {if $page== "stories1"}class="active"{/if}>
        <a href="{$system['system_url']}/stories1.php">
            <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/group.svg">
            {__("Stories1")}
        </a>
    </li> -->



            {if $system['blogs_enabled']}
                <li>
                    <a href="{$system['system_url']}/blogs">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/news.svg">
                        {__("Blogs")}
                    </a>
                </li>
            {/if}




            <!-- {if $system['market_enabled']}
                <li>
                    <a href="{$system['system_url']}/market">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/market.png">
                        {__("Market")}
                    </a>
                </li>
            {/if} -->

            {if $system['forums_enabled']}
                <li>
                    <a href="{$system['system_url']}/forums">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/forums.png">
                        {__("Forums")}
                    </a>
                </li>
            {/if}

            {if $system['movies_enabled']}
                <li {if $page== "movies"}class="active"{/if}>
                    <a href="{$system['system_url']}/movies">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/movies.png">
                        {__("Movies")}
                    </a>
                </li>
            {/if}

            {if $system['games_enabled']}
                <li {if $page== "games"}class="active"{/if}>
                    <a href="{$system['system_url']}/games">
                        <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/games.png">
                        {__("Games")}
                    </a>
                </li>
            {/if}
            <!-- explore -->
            <li>
              <a href="{$system['system_url']}/signout"> 
                 <img src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/signoutvert.svg">
                 {__("Log Out")}
               </a>
            </li>
            
        </ul>
    </div>
</div>
<!-- footer links -->
<div class="container">
	<div class="row footer {if $page == 'index' && !$user->_logged_in}border-top-0{/if}">
	<div class="col-sm-12 text-center" >{__("Sponsored by :<br>His Royal Highness Prince Meteb Bin Abdulaziz Al Saud and his sons")}</div>
	<div class="col-sm-5">
			&copy; 2020 {__("Aaynet")} · 
			<span class="text-link" data-toggle="modal" data-url="#translator">{$system['language']['title']} </span> 
	

			
			
		</div>

           <!-- {if $system['language']['code']=="ar_sa"}
			  {__("English")}
			{elseif $system['language']['code']=="en_us"}
			
			  {__("Arabic")}

			{/if}
			-->





		<div class="col-sm-7 links">
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


			

		
		</div>
		
		
	</div>
</div>
<!-- footer links -->
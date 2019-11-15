<?php
/**
 * index
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('bootstrap.php');

try {

	// check user logged in
	if(!$user->_logged_in) {

		// page header
		page_header(__("Welcome to").' '.$system['system_title']);

		// get custom fields
		$smarty->assign('custom_fields', $user->get_custom_fields());

	} else {

		// user access
		user_access();

		// get view content
		switch ($_GET['view']) {
			case '':
				// page header
				page_header($system['system_title']);

				// get stories
				if($system['stories_enabled']) {
					$stories = $user->get_stories();
					$smarty->assign('stories', $stories);
				}

				// prepare publisher
				$smarty->assign('feelings', get_feelings());
				$smarty->assign('feelings_types', get_feelings_types());

				// check daytime messages
				$daytime_msg_enabled = (isset($_COOKIE['dt_msg']))? false : $system['daytime_msg_enabled'];
				$smarty->assign('daytime_msg_enabled', $daytime_msg_enabled);

				// get boosted post
				if($system['packages_enabled']) {
					$boosted_post = $user->get_boosted_post();
					$smarty->assign('boosted_post', $boosted_post);
				}

				// get posts (newsfeed)
				$posts = $user->get_posts();
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'popular':
				// check if popular posts enabled
				if(!$system['popular_posts_enabled']) {
					// _error(404);
					modal("MESSAGE", __("Message"), __("Popular posts must be enabled"));
				}

				// page header
				page_header(__("Popular Posts"));

				// get posts (popular)
				$posts = $user->get_posts( array('get' => 'popular') );
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'discover':
				// check if discover posts enabled
				if(!$system['discover_posts_enabled']) {
					// _error(404)
					modal("MESSAGE", __("Message"), __("Discover posts must be enabled"));
				}

				// page header
				page_header(__("Discover Posts"));

				// get posts (discover)
				$posts = $user->get_posts( array('get' => 'discover') );
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'articles':
				// check if blogs enabled
				if(!$system['blogs_enabled']) {
					// _error(404);
					modal("MESSAGE", __("Message"), __("blog must be enabled"));
				}

				// page header
				page_header(__("My Articles"));

				// get posts (articles)
				$posts = $user->get_posts( array('get' => 'posts_profile', 'id' => $user->_data['user_id'], 'filter' => 'article' ) );
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'products':
				// check if market enabled
				if(!$system['market_enabled']) {
					// _error(404);
					modal("MESSAGE", __("Message"), __("Market must be enabled"));
				}
				// page header
				page_header(__("My Products"));

				// get posts (products)
				$posts = $user->get_posts( array('get' => 'posts_profile', 'id' => $user->_data['user_id'], 'filter' => 'product' ) );
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'saved':
				// page header
				page_header(__("Saved Posts"));

				// get posts (saved)
				$posts = $user->get_posts( array('get' => 'saved') );
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'memories':
				// page header
				page_header(__("Memories"));

				// get posts (memories)
				$posts = $user->get_posts( array('get' => 'memories') );
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'boosted_posts':
				if(!$system['packages_enabled']) {
					error(404);
				}
				// page header
				page_header(__("Boosted Posts"));

				// get posts (boosted)
				$posts = $user->get_posts( array('get' => 'boosted') );
				/* assign variables */
				$smarty->assign('posts', $posts);
				break;

			case 'boosted_pages':
				if(!$system['packages_enabled']) {
					error(404);
				}
				// page header
				page_header(__("Boosted Pages"));

				// get pages (boosted)
				$boosted_pages = $user->get_pages(array('boosted' => true));
				/* assign variables */
				$smarty->assign('boosted_pages', $boosted_pages);
				break;

			default:
				_error(404);
				break;
		}
		/* assign variables */
		$smarty->assign('view', $_GET['view']);

		if($system['packages_enabled']) {
			// get pro members
			$pro_members = $user->get_pro_members();
			/* assign variables */
			$smarty->assign('pro_members', $pro_members);

			// get promoted pages
			$promoted_pages = $user->get_pages(array('promoted' => true));
			/* assign variables */
			$smarty->assign('promoted_pages', $promoted_pages);
		}

		if($system['trending_hashtags_enabled']) {
			// get trending hashtags
			$trending_hashtags = $user->get_trending_hashtags();
			/* assign variables */
			$smarty->assign('trending_hashtags', $trending_hashtags);
		}

		// get suggested pages
		$new_pages = $user->get_pages(array('suggested' => true, 'random' => 'true', 'results' => 5));
		/* assign variables */
		$smarty->assign('new_pages', $new_pages);

		// get suggested groups
		$new_groups = $user->get_groups(array('suggested' => true, 'random' => 'true', 'results' => 5));
		/* assign variables */
		$smarty->assign('new_groups', $new_groups);

		// get suggested events
		$new_events = $user->get_events(array('suggested' => true, 'random' => 'true', 'results' => 5));
		/* assign variables */
		$smarty->assign('new_events', $new_events);

		// get announcements
		$announcements = $user->announcements();
		/* assign variables */
		$smarty->assign('announcements', $announcements);

		// get ads campaigns
		$ads_campaigns = $user->ads_campaigns();
		/* assign variables */
		$smarty->assign('ads_campaigns', $ads_campaigns);

		// get ads
		$ads = $user->ads('home');
		/* assign variables */
		$smarty->assign('ads', $ads);

		// get widgets
		$widgets = $user->widgets('home');
		/* assign variables */
		$smarty->assign('widgets', $widgets);

	}

} catch (Exception $e) {
	_error(__("Error"), $e->getMessage());
}

// page footer
page_footer("index");

?>
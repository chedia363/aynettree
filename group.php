<?php
/**
 * group
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('bootstrap.php');

// user access
if(!$system['system_public']) {
	user_access();
}

// check username
if(is_empty($_GET['username']) || !valid_username($_GET['username'])) {
	// _error(404);
	modal("MESSAGE", __("Message"), __("Check your username"));
}

try {

	// [1] get main group info
	$get_group = $db->query(sprintf("SELECT groups.*, picture_photo.source as group_picture_full, cover_photo.source as group_cover_full, groups_categories.category_name as group_category_name FROM groups LEFT JOIN posts_photos as picture_photo ON groups.group_picture_id = picture_photo.photo_id LEFT JOIN posts_photos as cover_photo ON groups.group_cover_id = cover_photo.photo_id LEFT JOIN groups_categories ON groups.group_category = groups_categories.category_id WHERE groups.group_name = %s", secure($_GET['username']))) or _error("SQL_ERROR_THROWEN");
	if($get_group->num_rows == 0) {
		_error(404);
	}
	$group = $get_group->fetch_assoc();
	/* check username case */
	if(strtolower($_GET['username']) == strtolower($group['group_name']) && $_GET['username'] != $group['group_name']) {
		redirect('/groups/'.$group['group_name']);
	}
	/* get group picture */
	$group['group_picture_default'] = ($group['group_picture'])? false : true;
	$group['group_picture'] = get_picture($group['group_picture'], 'group');
	$group['group_picture_full'] = ($group['group_picture_full'])? $system['system_uploads'].'/'.$group['group_picture_full'] : $group['group_picture_full'];
	/* get group cover */
	$group['group_cover'] = ($group['group_cover'])? $system['system_uploads'].'/'.$group['group_cover'] : $group['group_cover'];
	$group['group_cover_full'] = ($group['group_cover_full'])? $system['system_uploads'].'/'.$group['group_cover_full'] : $group['group_cover_full'];
	/* check group category */
	$group['group_category_name'] = (!$group['group_category_name'])? __('N/A'): $group['group_category_name']; /* in case deleted by system admin */
	/* get the connection */
	$group['i_admin'] = $user->check_group_adminship($user->_data['user_id'], $group['group_id']);
	$group['i_joined'] = $user->check_group_membership($user->_data['user_id'], $group['group_id']);
	/* get group requests */
	if($group['group_privacy'] != "public") {
		$group['total_requests'] = $user->get_group_requests_total($group['group_id']);
	}

	// [2] get view content
	/* check group privacy */
	if($group['group_privacy'] == "secret") {
		if($group['i_joined'] != "approved" && !$group['i_admin']) {
			if($user->_data['user_group'] != '1') {
				// _error(404);
				modal("MESSAGE", __("Message"), __("you don't have permisson to this!"));

			}
		}
	}
	if($group['group_privacy'] == "closed") {
		if($group['i_joined'] != "approved" && !$group['i_admin']) {
			if($user->_data['user_group'] != '1') {
				$_GET['view'] = 'members';
			}
		}
	}
	
	switch ($_GET['view']) {
		case '':
			/* get custom fields */
			$smarty->assign('custom_fields', $user->get_custom_fields( array("for" => "group", "get" => "profile", "node_id" => $group['group_id']) ));

			/* get invites */
			$group['invites'] = $user->get_group_invites($group['group_id']);

			/* get photos */
			$group['photos'] = $user->get_photos($group['group_id'], 'group');

			/* get pinned post */
			$pinned_post = $user->get_post($group['group_pinned_post']);
			$smarty->assign('pinned_post', $pinned_post);

			/* prepare publisher */
			$smarty->assign('feelings', get_feelings());
			$smarty->assign('feelings_types', get_feelings_types());

			/* get posts */
			$posts = $user->get_posts( array('get' => 'posts_group', 'id' => $group['group_id']) );
			/* assign variables */
			$smarty->assign('posts', $posts);
			require('includes/class-pager.php');
			$params['selected_page'] = ( (int) $_GET['page'] == 0) ? 1 : $_GET['page'];
			$total = $db->query("SELECT * FROM groups WHERE group_privacy = 'public'") or _error("SQL_ERROR");
			$params['total_items'] = $total->num_rows;
			$params['items_per_page'] = $system['max_results'];
			$params['url'] = $system['system_url'].'/explorer/'.'groups'.'/%s';
			$pager = new Pager($params);
			$limit_query = $pager->getLimitSql();

			// get groups
			$rows = array();
			$get_rows = $db->query("SELECT * FROM groups WHERE group_privacy = 'public' and groups.group_category = ".$group['group_category']."") or _error("SQL_ERROR");
			while($row = $get_rows->fetch_assoc()) {
				$row['group_picture'] = get_picture($row['group_picture'], 'group');
                /* check if the viewer joined the group */
                $row['i_joined'] = $user->check_group_membership($user->_data['user_id'], $row['group_id']);
                $rows[] = $row;
			}
			$smarty->assign('rows', $rows);
			$smarty->assign('pager', $pager->getPager());
			

			break;
			case 'Subgroups':
	
			$rows = array();
			$get_rows = $db->query("SELECT * FROM groups WHERE group_privacy = 'public' and groups.group_category = ".$group['group_category']."") or _error("SQL_ERROR");
			while($row = $get_rows->fetch_assoc()) {
				$row['group_picture'] = get_picture($row['group_picture'], 'group');
				/* check if the viewer joined the group */
				$row['i_joined'] = $user->check_group_membership($user->_data['user_id'], $row['group_id']);
				$rows[] = $row;
			}
			$smarty->assign('rows', $rows);
	
	
				break;

		case 'photos':
			/* get photos */
			$group['photos'] = $user->get_photos($group['group_id'], 'group');
			break;

		case 'albums':
			/* get albums */
			$group['albums'] = $user->get_albums($group['group_id'], 'group');
			break;

		case 'album':
			/* get album */
			$album = $user->get_album($_GET['id']);
			if(!$album || ($album['group_id'] != $group['group_id']) ) {
				// _error(404);
				modal("MESSAGE", __("Message"), __("Album not found!"));
			}
			/* assign variables */
			$smarty->assign('album', $album);
			break;

		case 'videos':
			/* get videos */
			$group['videos'] = $user->get_videos($group['group_id'], 'group');
			break;

		case 'members':
			/* get members */
			if($group['group_members'] > 0) {
				$group['members'] = $user->get_group_members($group['group_id']);
			}
			break;

		case 'invites':
			/* check if the viewer is a group member */
			if($group['i_joined'] != "approved") {
				// _error(404);
				modal("MESSAGE", __("Message"), __("you are not member in this group"));				
			}
			/* get invites */
			$group['invites'] = $user->get_group_invites($group['group_id']);
			break;

		case 'settings':
			/* check if the viewer is the admin */
			if(!$group['i_admin']) {
				// _error(404);
				modal("MESSAGE", __("Message"), __("you are not the admin"));
			}
			/* get sub_view content */
			$sub_view = $_GET['id'];
			switch ($sub_view) {
				case '':
					/* get custom fields */
					$smarty->assign('custom_fields', $user->get_custom_fields( array("for" => "group", "get" => "settings", "node_id" => $group['group_id']) ));

					/* get group categories */
					$categories = $user->get_groups_categories();
					/* assign variables */
					$smarty->assign('categories', $categories);
					break;

				case 'requests':
					if($group['group_privacy'] == "public") {
						_error(404);
					}
					/* get requests */
					if($group['total_requests'] > 0) {
						$group['requests'] = $user->get_group_requests($group['group_id']);
					}
					break;

				case 'members':
					/* get admins */
					$group['group_admins_count'] = count($user->get_group_admins_ids($group['group_id']));
					$group['group_admins'] = $user->get_group_admins($group['group_id']);

					/* get members */
					if($group['group_members'] > 0) {
						$group['members'] = $user->get_group_members($group['group_id'], 0, true);
					}
					break;

				case 'delete':
					/* check if the viewer not the super admin */
					if($user->_data['user_id'] != $group['group_admin']) {
						// _error(404);
						modal("MESSAGE", __("Message"), __("you are not the super admin"));
					}
					break;
				
				default:
					_error(404);
					break;
			}
			/* assign variables */
			$smarty->assign('sub_view', $sub_view);
			break;
		
		default:
			_error(404);
			break;
	}

	// recent rearches
	if(isset($_GET['ref']) && $_GET['ref'] == "qs") {
		$user->set_search_log($group['group_id'], 'group');
	}

} catch (Exception $e) {
	_error(__("Error"), $e->getMessage());
}

// page header
page_header($group['group_title'], $group['group_description'], $group['group_picture']);

// assign variables
$smarty->assign('group', $group);
$smarty->assign('view', $_GET['view']);

// page footer
page_footer("group");

?>
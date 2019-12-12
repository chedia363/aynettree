<?php
/**
 * groups
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('bootstrap.php');

// user access
user_access();

try {

	// get view content
	switch ($_GET['view']) {
		case '':

			// page header
			page_header(__("Discover Groups"));
			
			// get new groups
			$groups = $user->get_groups(array('suggested' => true));
			/* assign variables */
			$smarty->assign('groups', $groups);
			$smarty->assign('get', "suggested_groups");

			break;
		
		case 'joined':

			// page header
			page_header(__("Joined Groups"));
			
			// get joined groups
			$groups = $user->get_groups( array('user_id' => $user->_data['user_id']) );
			/* assign variables */
			$smarty->assign('groups', $groups);
			$smarty->assign('get', "joined_groups");

			break;

		case 'manage':

			// page header
			page_header(__("Your Groups"));
			
			// get managed groups
			$groups = $user->get_groups();
			/* assign variables */
			$smarty->assign('groups', $groups);
			$smarty->assign('get', "groups");

			break;
			
		case 'get_all':

			// page header
			page_header(__("All Groups"));
			
			// get managed groups
			$groups1 = $user->get_groups1();
			$groups2 = $user->get_groups2();	
			$groups3 = $user->get_groups3();
			$groups4 = $user->get_groups4();				
			$groups5 = $user->get_groups5();					

		
			/* assign variables */
			$smarty->assign('groups1', $groups1);
			$smarty->assign('groups2', $groups2);
			$smarty->assign('groups3', $groups3);
			$smarty->assign('groups4', $groups4);	
			$smarty->assign('groups5', $groups5);	

			$smarty->assign('get', "groups");

			break;

		default:
			_error(404);
			break;
	}
	/* assign variables */
	$smarty->assign('view', $_GET['view']);

	// get custom fields
	$smarty->assign('custom_fields', $user->get_custom_fields( array("for" => "group") ));

	// get groups categories
	$categories = $user->get_groups_categories();
	/* assign variables */
	$smarty->assign('categories', $categories);
	
} catch (Exception $e) {
	_error(__("Error"), $e->getMessage());
}

// page footer
page_footer("groups");

?>
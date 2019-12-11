<?php
/**
 * blogs
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('bootstrap.php');

// // user access
// if(!$system['system_public']) {
// 	user_access();
// }



try {

	// get view contentt
	switch ($_GET['view']) {
	

		

		case 'editt':

			// page header
			page_header(__("Edit Post"));

			// get article
			$post = $user->get_post($_GET['post_id']);
			if(!$post)  {
				// _error(404);
				modal("MESSAGE", __("Message"), __("post doesn't exist"));
			}
			/* assign variables */
			$smarty->assign('post', $post);
			break;

		

		default:
			_error(404);
			break;
	}
	/* assign variables */
	$smarty->assign('view', $_GET['view']);

	
	
} catch (Exception $e) {
	_error(__("Error"), $e->getMessage());
}

// page footer
page_footer("postmodif");

?>
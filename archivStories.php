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
			$rows = $user->get_Archivstorieuser();
					
			// assign variables
			$smarty->assign('rows', $rows);
			break;
		
		
		// case 'edit':

		

  
		// 	$rows = $user->get_Stories($_GET['post_id']);
		// 	if(!$rows)  {
		// 		// _error(404);
		// 		modal("MESSAGE", __("Message"), __("Stories doesn't exist"));
		// 	}
		// 	/* assign variables */
		// 	$smarty->assign('rows', $rows);
		// // 	break;
		// 	// /* valid inputs */
		// 	// if(!isset($_GET['media_id']) || !is_numeric($_GET['media_id'])) {
		// 	// 	_error(400);
		// 	// }
		// 	// /* update */
		// 	// $db->query(sprintf("UPDATE stories SET time = %s WHERE media_id = %s", secure($_POST['time'],NOW()), secure($_GET['id'], 'int') )) or _error("SQL_ERROR_THROWEN");
		// 	// /* return */
		// 	// return_json( array('success' => true, 'message' => __("stories info have been updated")) );
		// 	break;
		default:
			_error(404);
			break;
	}
	$smarty->assign('view', $_GET['view']);
	
} catch (Exception $e) {
	_error(__("Error"), $e->getMessage());
}

// page footer
page_footer("archivStories");

?>
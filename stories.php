<?php
/**
 * blogs
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



try {

	// get view content
	switch ($_GET['view']) {
	
			case '':

					// page header
					page_header(__("Admin")." &rsaquo; ".__("stories"));

					// get data
					$rows = $user->get_storieuser();
					
					// assign variables
					$smarty->assign('rows', $rows);
					break;




			case 'edit':
					// valid inputs
					if(!isset($_GET['id']) || !is_numeric($_GET['id'])) {
						_error(404);
					}
					
					// get data
					$get_data = $db->query(sprintf("SELECT * FROM stories_media WHERE media_id = %s", secure($_GET['id'], 'int') )) or _error("SQL_ERROR");
					if($get_data->num_rows == 0) {
						_error(404);
					}
					$data = $get_data->fetch_assoc();
					
					// assign variables
					$smarty->assign('data', $data);
					
					// page header
					page_header(__("stories")." &rsaquo; ".__("stories")." &rsaquo; ".$data['media_id']);
					break;

			case 'add':
				// page header
				page_header(__("Admin")." &rsaquo; ".__("stories")." &rsaquo; ".__("Add New"));
				
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
page_footer("stories");

?>
<?php
/**
 * ajax -> posts -> product
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// user access
// user_access(true);

// check if market enabled


try {

	// initialize the return array
	$return = array();

	switch ($_REQUEST['do']) {
			case 'edit':
			/* check id */
			if(!isset($_GET['id']) || !is_numeric($_GET['id'])) {
				_error(400);
			}
			/* edit article */
			$user->edit_post($_GET['id'], $_POST['text']);
			return_json( array('callback' => 'window.location = "'.$system['system_url'].'";') );
			break;
		default:
		_error(400);
		break;
	}

	// return & exit
	// return_json($return);

} catch (Exception $e) {
	modal("ERROR", __("Error"), $e->getMessage());
}

?>
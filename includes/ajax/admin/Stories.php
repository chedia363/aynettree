<?php
/**
 * ajax -> admin -> currencies
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();


// check admin logged in
if(!$user->_logged_in || !$user->_is_admin) {
	modal("MESSAGE", __("System Message"), __("You don't have the right permission to access this"));
}

// edit currencies
try {

	switch ($_GET['do']) {
		case 'edit':
			/* valid inputs */
			if(!isset($_GET['id']) || !is_numeric($_GET['id'])) {
				_error(400);
			}
            /* update */
           
            // $db->query(sprintf("UPDATE stories_media SET text = %s,time = %s WHERE media_id = %s", secure($_POST['text']),secure($date), secure($_GET['id'], 'int') )) or _error("SQL_ERROR_THROWEN");
			$db->query(sprintf("UPDATE stories_media SET text = %s, source = %s WHERE media_id = %s", secure($_POST['text']),secure($_POST['source']), secure($_GET['id'], 'int') )) or _error("SQL_ERROR_THROWEN");
			/* return */
			return_json( array('success' => true, 'message' => __("Story have been updated")) );
			break;

	
		default:
			_error(400);
			break;
	}

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>
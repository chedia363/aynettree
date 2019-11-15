<?php
/**
 * ajax -> chat -> reaction
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// user access
user_access(true);

// reaction
try {

	// initialize the return array
	$return = array();

	switch ($_POST['do']) {
		
		case 'close':
			/* valid inputs */
			if(!isset($_POST['conversation_id']) || !is_numeric($_POST['conversation_id'])) {
				_error(400);
			}
			/* unset from opened chat boxes & return */
			if(($key = array_search($_POST['conversation_id'], $_SESSION['chat_boxes_opened'])) !== false) {
				unset($_SESSION['chat_boxes_opened'][$key]);
				/* reindex the array */
				$_SESSION['chat_boxes_opened'] = array_values($_SESSION['chat_boxes_opened']);
				/* remove typing status */
				$user->update_conversation_typing_status($_POST['conversation_id'], false);
			}
			break;

		case 'delete':
			/* valid inputs */
			if(!isset($_POST['conversation_id']) || !is_numeric($_POST['conversation_id'])) {
				_error(400);
			}
			$user->delete_conversation($_POST['conversation_id']);
			/* unset from opened chat boxes & return */
			if(($key = array_search($_POST['conversation_id'], $_SESSION['chat_boxes_opened'])) !== false) {
				unset($_SESSION['chat_boxes_opened'][$key]);
				/* reindex the array */
				$_SESSION['chat_boxes_opened'] = array_values($_SESSION['chat_boxes_opened']);
			}
			$return['callback'] = 'window.location = "'.$system['system_url'].'/messages"';
			break;

		case 'color':
			/* valid inputs */
			if(!isset($_POST['conversation_id']) || !is_numeric($_POST['conversation_id'])) {
				_error(400);
			}
			if(!isset($_POST['color'])) {
				_error(400);
			}
			$user->set_conversation_color($_POST['conversation_id'], $_POST['color']);
			break;

		case 'typing':
			/* check if chat typing status enabled */
			if($system['chat_typing_enabled']) {
				/* valid inputs */
				if(!isset($_POST['conversation_id']) || !is_numeric($_POST['conversation_id'])) {
					_error(400);
				}
				if(!isset($_POST['is_typing'])) {
					_error(400);
				}
				$user->update_conversation_typing_status($_POST['conversation_id'], $_POST['is_typing']);
			}
			break;

		case 'seen':
			/* check if chat seen status enabled */
			if($system['chat_seen_enabled']) {
				/* valid inputs */
				if(!isset($_POST['ids'])) {
					_error(400);
				}
				$user->update_conversation_seen_status((array)$_POST['ids']);
			}
			break;

		default:
			_error(400);
			break;
	}

	// return & exit
	return_json($return);

} catch (Exception $e) {
	modal("ERROR", __("Error"), $e->getMessage());
}

?>
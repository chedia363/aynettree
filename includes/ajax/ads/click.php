<?php
/**
 * ajax -> ads -> click
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();


try {

	// valid inputs
	if(!isset($_POST['id']) || !is_numeric($_POST['id'])) {
		_error(400);
	}

	// update campaign
	$user->update_campaign_bidding($_POST['id']);

	// return
	return_json();
	
} catch (Exception $e) {
	modal("ERROR", __("Error"), $e->getMessage());
}

?>
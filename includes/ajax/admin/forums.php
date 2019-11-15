<?php
/**
 * ajax -> admin -> forums
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

// edit forums
try {

	switch ($_GET['do']) {
		case 'settings':
			$_POST['forums_enabled'] = (isset($_POST['forums_enabled']))? '1' : '0';
			$_POST['forums_online_enabled'] = (isset($_POST['forums_online_enabled']))? '1' : '0';
			$_POST['forums_statistics_enabled'] = (isset($_POST['forums_statistics_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						forums_enabled = %s, 
						forums_online_enabled = %s, 
						forums_statistics_enabled = %s ", secure($_POST['forums_enabled']), secure($_POST['forums_online_enabled']), secure($_POST['forums_statistics_enabled']) )) or _error("SQL_ERROR_THROWEN");
			return_json( array('success' => true, 'message' => __("Forums settings have been updated")) );
			break;
		case 'add_forum':
			/* insert */
			$db->query(sprintf("INSERT INTO forums (forum_name, forum_description, forum_section, forum_order) VALUES (%s, %s, %s, %s)", secure($_POST['forum_name']), secure($_POST['forum_description']), secure($_POST['forum_section'], 'int'), secure($_POST['forum_order'], 'int') )) or _error("SQL_ERROR_THROWEN");
			/* return */
			return_json( array('callback' => 'window.location = "'.$system['system_url'].'/admincp/forums";') );
			break;

		case 'edit_forum':
			/* valid inputs */
			if(!isset($_GET['id']) || !is_numeric($_GET['id'])) {
				_error(400);
			}
			if($_GET['id'] == $_POST['forum_section']) {
				throw new Exception(__("You can not set the forum as a section to itself"));
			}
			/* update */
			$db->query(sprintf("UPDATE forums SET forum_name = %s, forum_description = %s, forum_section = %s, forum_order = %s WHERE forum_id = %s", secure($_POST['forum_name']), secure($_POST['forum_description']), secure($_POST['forum_section'], 'int'), secure($_POST['forum_order'], 'int'), secure($_GET['id'], 'int') )) or _error("SQL_ERROR_THROWEN");
			/* return */
			return_json( array('success' => true, 'message' => __("Forum info have been updated")) );
			break;

		default:
			_error(400);
			break;
	}

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>
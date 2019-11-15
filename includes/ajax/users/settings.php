<?php
/**
 * ajax -> users -> settings
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

// settings
try {

	switch ($_GET['edit']) {

		case 'account':
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your account settings has been updated")) );
			break;

		case 'basic':
			/* valid inputs */
			if(!isset($_POST['firstname']) || !isset($_POST['lastname']) || !isset($_POST['gender']) || !isset($_POST['birth_month']) || !isset($_POST['birth_day']) || !isset($_POST['birth_year']) || !isset($_POST['relationship'])  || !isset($_POST['biography'])  || !isset($_POST['website'])  ) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your profile info has been updated")) );
			break;

		case 'work':
			/* valid inputs */
			if(!isset($_POST['work_title']) || !isset($_POST['work_place']) ) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your profile info has been updated")) );
			break;

		case 'location':
			/* valid inputs */
			if(!isset($_POST['city']) || !isset($_POST['hometown']) ) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your profile info has been updated")) );
			break;

		case 'education':
			/* valid inputs */
			if(!isset($_POST['edu_major']) || !isset($_POST['edu_school']) || !isset($_POST['edu_class'])) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your profile info has been updated")) );
			break;

		case 'social':
			/* valid inputs */
			if(!isset($_POST['facebook']) || !isset($_POST['twitter']) || !isset($_POST['google']) || !isset($_POST['youtube']) || !isset($_POST['instagram']) || !isset($_POST['linkedin']) || !isset($_POST['vkontakte'])) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your profile info has been updated")) );
			break;

		case 'other':
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your profile info has have been updated")) );
			break;

		case 'password':
			/* valid inputs */
			if(!isset($_POST['current']) || !isset($_POST['new']) || !isset($_POST['confirm']) ) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your password has been updated")) );
			break;

		case 'two-factor':
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your two-factor authentication settings have been updated")) );
			break;

		case 'privacy':
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your privacy settings have been updated")) );
			break;

		case 'notifications':
			$user->settings($_GET['edit'], $_POST);
			return_json( array('success' => true, 'message' => __("Your email notifications settings have been updated")) );
			break;

		case 'notifications_sound':
			/* valid inputs */
			if(!isset($_GET['notifications_sound'])) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_GET);
			return_json();
			break;

		case 'chat':
			/* valid inputs */
			if(!isset($_GET['privacy_chat'])) {
				_error(400);
			}
			$user->settings($_GET['edit'], $_GET);
			return_json( array('success' => true, 'message' => __("Your privacy settings have been updated")) );
			break;

		case 'clear_search_log':
			$user->clear_search_log();
			return_json();
			break;

		default:
			_error(400);
			break;
	}

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>
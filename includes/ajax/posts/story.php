<?php
/**
 * ajax -> posts -> story
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

// check if stories enabled
if(!$system['stories_enabled']) {
	modal("MESSAGE", __("Error"), __("This feature has been disabled by the admin"));
}

try {

	// initialize the return array
	$return = array();

	switch ($_REQUEST['do']) {
		case 'publish':
			// valid inputs
			if(!isset($_POST['photos']) && !isset($_POST['videos']) ) {
				// _error(400);
				modal("MESSAGE", __("Message"), __("Photos or Videos doesn't exist"));

			}
			if(strlen($_POST['message']) > 300)
			{
				modal("MESSAGE", __("Error"), __("Very long text"));	
				
			}

			/* filter photos */
			$photos = array();
			if(isset($_POST['photos'])) {
				$_POST['photos'] = _json_decode($_POST['photos']);
				if(is_object($_POST['photos'])) {
					/* filter the photos */
					foreach($_POST['photos'] as $photo) {
						$photos[] = $photo;
					}
				}
			}
			/* filter videos */
			$videos = array();
			if(isset($_POST['videos'])) {
				$_POST['videos'] = _json_decode($_POST['videos']);

					
				if(is_object($_POST['videos'])) {
					/* filter the videos */
					foreach($_POST['videos'] as $video) {
						$videos[] = $video;
					}
				}
			}
			if(count($photos) == 0 && count($videos) == 0) {
				// _error(400);
				modal("MESSAGE", __("Message"), __("Please wait until finishing upload"));
			}

		
			$user->post_story(str_replace('"','`',$_POST['message']), $photos, $videos);
			$return['callback'] = "window.location.reload();";
			break;
        case 'publish1':
			
			$user->post_archvstory($_POST['id']);
			$return['callback'] = "window.location.reload();";

			// Méthode2
			// $refresh = $user->update_archvstory($_POST['id']);
			// if($refresh) {
			// 	$return['refresh'] = true;
			// }
			break;
        case 'archiv':
			
			$user->archv_story($_POST['id']);
			$return['callback'] = "window.location.reload();";


			break;
			
		case 'create':
			// prepare publisher
			$return['story_publisher'] = $smarty->fetch("ajax.story.publisher.tpl");
			$return['callback'] = "$('#modal').modal('show'); $('.modal-content:last').html(response.story_publisher);";
			break;

		case 'delete_story':
			$refresh = $user->delete_story($_POST['id']);
			if($refresh) {
				$return['refresh'] = true;
			}
			//  $db->query(sprintf("DELETE FROM stories_media WHERE media_id = %s", secure($media_id, 'int') )) or _error("SQL_ERROR_THROWEN");
			//  $return['callback'] = "window.location.reload();";
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
<?php
/**
 * ajax -> admin -> settings
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

// edit settings
try {

	switch ($_GET['edit']) {
		case 'general_settings':
			$_POST['system_public'] = (isset($_POST['system_public']))? '1' : '0';
			$_POST['system_live'] = (isset($_POST['system_live']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						system_public = %s, 
						system_live = %s, 
						system_message = %s, 
						system_title = %s, 
						system_description = %s, 
						system_keywords = %s, 
						system_email = %s,
						system_datetime_format = %s ", secure($_POST['system_public']), secure($_POST['system_live']), secure($_POST['system_message']), secure($_POST['system_title']), secure($_POST['system_description']), secure($_POST['system_keywords']), secure($_POST['system_email']), secure($_POST['system_datetime_format']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'features_settings':
			$_POST['contact_enabled'] = (isset($_POST['contact_enabled']))? '1' : '0';
			$_POST['directory_enabled'] = (isset($_POST['directory_enabled']))? '1' : '0';
			$_POST['pages_enabled'] = (isset($_POST['pages_enabled']))? '1' : '0';
			$_POST['groups_enabled'] = (isset($_POST['groups_enabled']))? '1' : '0';
			$_POST['events_enabled'] = (isset($_POST['events_enabled']))? '1' : '0';
			$_POST['blogs_enabled'] = (isset($_POST['blogs_enabled']))? '1' : '0';
			$_POST['users_blogs_enabled'] = (isset($_POST['users_blogs_enabled']))? '1' : '0';
			$_POST['market_enabled'] = (isset($_POST['market_enabled']))? '1' : '0';
			$_POST['movies_enabled'] = (isset($_POST['movies_enabled']))? '1' : '0';
			$_POST['games_enabled'] = (isset($_POST['games_enabled']))? '1' : '0';
			$_POST['daytime_msg_enabled'] = (isset($_POST['daytime_msg_enabled']))? '1' : '0';
			$_POST['pokes_enabled'] = (isset($_POST['pokes_enabled']))? '1' : '0';
			$_POST['gifts_enabled'] = (isset($_POST['gifts_enabled']))? '1' : '0';
			$_POST['profile_notification_enabled'] = (isset($_POST['profile_notification_enabled']))? '1' : '0';
			$_POST['browser_notifications_enabled'] = (isset($_POST['browser_notifications_enabled']))? '1' : '0';
			$_POST['noty_notifications_enabled'] = (isset($_POST['noty_notifications_enabled']))? '1' : '0';
			$_POST['cookie_consent_enabled'] = (isset($_POST['cookie_consent_enabled']))? '1' : '0';
			$_POST['adblock_detector_enabled'] = (isset($_POST['adblock_detector_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						contact_enabled = %s, 
						directory_enabled = %s, 
						pages_enabled = %s, 
						groups_enabled = %s, 
						events_enabled = %s, 
						blogs_enabled = %s, 
						users_blogs_enabled = %s, 
						market_enabled = %s, 
						movies_enabled = %s, 
						games_enabled = %s, 
						daytime_msg_enabled = %s, 
						pokes_enabled = %s, 
						gifts_enabled = %s, 
						profile_notification_enabled = %s, 
						browser_notifications_enabled = %s, 
						noty_notifications_enabled = %s, 
						cookie_consent_enabled = %s, 
						adblock_detector_enabled = %s ", secure($_POST['contact_enabled']), secure($_POST['directory_enabled']), secure($_POST['pages_enabled']), secure($_POST['groups_enabled']), secure($_POST['events_enabled']), secure($_POST['blogs_enabled']), secure($_POST['users_blogs_enabled']), secure($_POST['market_enabled']), secure($_POST['movies_enabled']), secure($_POST['games_enabled']), secure($_POST['daytime_msg_enabled']), secure($_POST['pokes_enabled']), secure($_POST['gifts_enabled']), secure($_POST['profile_notification_enabled']), secure($_POST['browser_notifications_enabled']), secure($_POST['noty_notifications_enabled']), secure($_POST['cookie_consent_enabled']), secure($_POST['adblock_detector_enabled']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'posts':
			$_POST['stories_enabled'] = (isset($_POST['stories_enabled']))? '1' : '0';
			$_POST['popular_posts_enabled'] = (isset($_POST['popular_posts_enabled']))? '1' : '0';
			$_POST['discover_posts_enabled'] = (isset($_POST['discover_posts_enabled']))? '1' : '0';
			$_POST['memories_enabled'] = (isset($_POST['memories_enabled']))? '1' : '0';
			$_POST['wall_posts_enabled'] = (isset($_POST['wall_posts_enabled']))? '1' : '0';
			$_POST['polls_enabled'] = (isset($_POST['polls_enabled']))? '1' : '0';
			$_POST['gif_enabled'] = (isset($_POST['gif_enabled']))? '1' : '0';
			$_POST['geolocation_enabled'] = (isset($_POST['geolocation_enabled']))? '1' : '0';
			$_POST['post_translation_enabled'] = (isset($_POST['post_translation_enabled']))? '1' : '0';
			$_POST['social_share_enabled'] = (isset($_POST['social_share_enabled']))? '1' : '0';
			$_POST['smart_yt_player'] = (isset($_POST['smart_yt_player']))? '1' : '0';
			$_POST['trending_hashtags_enabled'] = (isset($_POST['trending_hashtags_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						stories_enabled = %s, 
						popular_posts_enabled = %s, 
						discover_posts_enabled = %s, 
						memories_enabled = %s, 
						wall_posts_enabled = %s, 
						polls_enabled = %s, 
						gif_enabled = %s, 
						giphy_key = %s, 
						geolocation_enabled = %s, 
						geolocation_key = %s, 
						post_translation_enabled = %s, 
						yandex_key = %s, 
						social_share_enabled = %s, 
						smart_yt_player = %s, 
						max_post_length = %s, 
						max_comment_length = %s, 
						max_posts_hour = %s, 
						max_comments_hour = %s, 
						default_privacy = %s, 
						trending_hashtags_enabled = %s, 
						trending_hashtags_interval = %s, 
						trending_hashtags_limit = %s ", secure($_POST['stories_enabled']), secure($_POST['popular_posts_enabled']), secure($_POST['discover_posts_enabled']), secure($_POST['memories_enabled']), secure($_POST['wall_posts_enabled']), secure($_POST['polls_enabled']), secure($_POST['gif_enabled']), secure($_POST['giphy_key']), secure($_POST['geolocation_enabled']), secure($_POST['geolocation_key']), secure($_POST['post_translation_enabled']), secure($_POST['yandex_key']), secure($_POST['social_share_enabled']), secure($_POST['smart_yt_player']), secure($_POST['max_post_length'], 'int'), secure($_POST['max_comment_length'], 'int'), secure($_POST['max_posts_hour'], 'int'), secure($_POST['max_comments_hour'], 'int'), secure($_POST['default_privacy']), secure($_POST['trending_hashtags_enabled']), secure($_POST['trending_hashtags_interval']), secure($_POST['trending_hashtags_limit'], 'int') )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'registration':
			$_POST['registration_enabled'] = (isset($_POST['registration_enabled']))? '1' : '0';
			$_POST['invitation_enabled'] = (isset($_POST['invitation_enabled']))? '1' : '0';
			$_POST['invitation_widget_enabled'] = (isset($_POST['invitation_widget_enabled']))? '1' : '0';
			$_POST['packages_enabled'] = (isset($_POST['packages_enabled']) || $_POST['registration_type'] == "paid")? '1' : '0';
			$_POST['packages_wallet_payment_enabled'] = (isset($_POST['packages_wallet_payment_enabled']))? '1' : '0';
			$_POST['activation_enabled'] = (isset($_POST['activation_enabled']))? '1' : '0';
			$_POST['two_factor_enabled'] = (isset($_POST['two_factor_enabled']))? '1' : '0';
			$_POST['verification_requests'] = (isset($_POST['verification_requests']))? '1' : '0';
			$_POST['age_restriction'] = (isset($_POST['age_restriction']))? '1' : '0';
			$_POST['getting_started'] = (isset($_POST['getting_started']))? '1' : '0';
			$_POST['delete_accounts_enabled'] = (isset($_POST['delete_accounts_enabled']))? '1' : '0';
			$_POST['download_info_enabled'] = (isset($_POST['download_info_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						registration_enabled = %s, 
						registration_type = %s, 
						invitation_enabled = %s, 
						invitation_widget_enabled = %s, 
						invitation_widget_max = %s, 
						packages_enabled = %s, 
						packages_wallet_payment_enabled = %s, 
						activation_enabled = %s, 
						activation_type = %s, 
						two_factor_enabled = %s, 
						two_factor_type = %s, 
						verification_requests = %s, 
						age_restriction = %s, 
						minimum_age = %s, 
						getting_started = %s, 
						delete_accounts_enabled = %s, 
						download_info_enabled = %s, 
						max_accounts = %s, 
						max_friends = %s", secure($_POST['registration_enabled']), secure($_POST['registration_type']), secure($_POST['invitation_enabled']), secure($_POST['invitation_widget_enabled']), secure($_POST['invitation_widget_max'], 'int'), secure($_POST['packages_enabled']), secure($_POST['packages_wallet_payment_enabled']), secure($_POST['activation_enabled']), secure($_POST['activation_type']), secure($_POST['two_factor_enabled']), secure($_POST['two_factor_type']), secure($_POST['verification_requests']), secure($_POST['age_restriction']), secure($_POST['minimum_age'], 'int'), secure($_POST['getting_started']), secure($_POST['delete_accounts_enabled']), secure($_POST['download_info_enabled']), secure($_POST['max_accounts'], 'int'), secure($_POST['max_friends'], 'int') )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'social_login':
			$_POST['social_login_enabled'] = (isset($_POST['social_login_enabled']))? '1' : '0';
			$_POST['facebook_login_enabled'] = (isset($_POST['facebook_login_enabled']))? '1' : '0';
			$_POST['twitter_login_enabled'] = (isset($_POST['twitter_login_enabled']))? '1' : '0';
			$_POST['instagram_login_enabled'] = (isset($_POST['instagram_login_enabled']))? '1' : '0';
			$_POST['linkedin_login_enabled'] = (isset($_POST['linkedin_login_enabled']))? '1' : '0';
			$_POST['vkontakte_login_enabled'] = (isset($_POST['vkontakte_login_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						social_login_enabled = %s, 
						facebook_login_enabled = %s, 
						facebook_appid = %s, 
						facebook_secret = %s, 
						twitter_login_enabled = %s, 
						twitter_appid = %s, 
						twitter_secret = %s, 
						instagram_login_enabled = %s, 
						instagram_appid = %s, 
						instagram_secret = %s, 
						linkedin_login_enabled = %s, 
						linkedin_appid = %s, 
						linkedin_secret = %s, 
						vkontakte_login_enabled = %s, 
						vkontakte_appid = %s, 
						vkontakte_secret = %s ", secure($_POST['social_login_enabled']), secure($_POST['facebook_login_enabled']), secure($_POST['facebook_appid']), secure($_POST['facebook_secret']), secure($_POST['twitter_login_enabled']), secure($_POST['twitter_appid']), secure($_POST['twitter_secret']), secure($_POST['instagram_login_enabled']), secure($_POST['instagram_appid']), secure($_POST['instagram_secret']), secure($_POST['linkedin_login_enabled']), secure($_POST['linkedin_appid']), secure($_POST['linkedin_secret']), secure($_POST['vkontakte_login_enabled']), secure($_POST['vkontakte_appid']), secure($_POST['vkontakte_secret']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'emails':
			$_POST['email_smtp_enabled'] = (isset($_POST['email_smtp_enabled']))? '1' : '0';
			$_POST['email_smtp_authentication'] = (isset($_POST['email_smtp_authentication']))? '1' : '0';
			$_POST['email_smtp_ssl'] = (isset($_POST['email_smtp_ssl']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						email_smtp_enabled = %s, 
						email_smtp_authentication = %s, 
						email_smtp_ssl = %s, 
						email_smtp_server = %s, 
						email_smtp_port = %s, 
						email_smtp_username = %s, 
						email_smtp_password = %s, 
						email_smtp_setfrom = %s ", secure($_POST['email_smtp_enabled']), secure($_POST['email_smtp_authentication']), secure($_POST['email_smtp_ssl']), secure($_POST['email_smtp_server']), secure($_POST['email_smtp_port']), secure($_POST['email_smtp_username']), secure($_POST['email_smtp_password']), secure($_POST['email_smtp_setfrom']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'email_notifications':
			$_POST['email_notifications'] = (isset($_POST['email_notifications']))? '1' : '0';
			$_POST['email_post_likes'] = (isset($_POST['email_post_likes']))? '1' : '0';
			$_POST['email_post_comments'] = (isset($_POST['email_post_comments']))? '1' : '0';
			$_POST['email_post_shares'] = (isset($_POST['email_post_shares']))? '1' : '0';
			$_POST['email_wall_posts'] = (isset($_POST['email_wall_posts']))? '1' : '0';
			$_POST['email_mentions'] = (isset($_POST['email_mentions']))? '1' : '0';
			$_POST['email_profile_visits'] = (isset($_POST['email_profile_visits']))? '1' : '0';
			$_POST['email_friend_requests'] = (isset($_POST['email_friend_requests']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						email_notifications = %s, 
						email_post_likes = %s, 
						email_post_comments = %s, 
						email_post_shares = %s, 
						email_wall_posts = %s, 
						email_mentions = %s, 
						email_profile_visits = %s, 
						email_friend_requests = %s ", secure($_POST['email_notifications']), secure($_POST['email_post_likes']), secure($_POST['email_post_comments']), secure($_POST['email_post_shares']), secure($_POST['email_wall_posts']), secure($_POST['email_mentions']), secure($_POST['email_profile_visits']), secure($_POST['email_friend_requests']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'sms':
			$db->query(sprintf("UPDATE system_options SET 
						twilio_sid = %s, 
						twilio_token = %s, 
						twilio_phone = %s, 
						system_phone = %s ", secure($_POST['twilio_sid']), secure($_POST['twilio_token']), secure($_POST['twilio_phone']), secure($_POST['system_phone']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'chat':
			$_POST['chat_enabled'] = (isset($_POST['chat_enabled']))? '1' : '0';
			$_POST['chat_status_enabled'] = (isset($_POST['chat_status_enabled']))? '1' : '0';
			$_POST['chat_typing_enabled'] = (isset($_POST['chat_typing_enabled']))? '1' : '0';
			$_POST['chat_seen_enabled'] = (isset($_POST['chat_seen_enabled']))? '1' : '0';
			$_POST['video_call_enabled'] = (isset($_POST['video_call_enabled']))? '1' : '0';
			$_POST['audio_call_enabled'] = (isset($_POST['audio_call_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						chat_enabled = %s,
						chat_status_enabled = %s,
						chat_typing_enabled = %s,
						chat_seen_enabled = %s,
						video_call_enabled = %s,
						audio_call_enabled = %s,
						twilio_sid = %s,
						twilio_apisid = %s,
						twilio_apisecret = %s ", secure($_POST['chat_enabled']), secure($_POST['chat_status_enabled']), secure($_POST['chat_typing_enabled']), secure($_POST['chat_seen_enabled']), secure($_POST['video_call_enabled']), secure($_POST['audio_call_enabled']), secure($_POST['twilio_sid']), secure($_POST['twilio_apisid']), secure($_POST['twilio_apisecret']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'uploads':
			$_POST['photos_enabled'] = (isset($_POST['photos_enabled']))? '1' : '0';
			$_POST['videos_enabled'] = (isset($_POST['videos_enabled']))? '1' : '0';
			$_POST['audio_enabled'] = (isset($_POST['audio_enabled']))? '1' : '0';
			$_POST['file_enabled'] = (isset($_POST['file_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						uploads_directory = %s, 
						uploads_prefix = %s, 
						max_avatar_size = %s, 
						max_cover_size = %s, 
						photos_enabled = %s, 
						max_photo_size = %s, 
						uploads_quality = %s, 
						videos_enabled = %s, 
						max_video_size = %s, 
						video_extensions = %s, 
						audio_enabled = %s, 
						max_audio_size = %s, 
						audio_extensions = %s,
						file_enabled = %s, 
						max_file_size = %s, 
						file_extensions = %s ", secure($_POST['uploads_directory']), secure($_POST['uploads_prefix']), secure($_POST['max_avatar_size']), secure($_POST['max_cover_size']), secure($_POST['photos_enabled']), secure($_POST['max_photo_size']), secure($_POST['uploads_quality']), secure($_POST['videos_enabled']), secure($_POST['max_video_size']), secure($_POST['video_extensions']), secure($_POST['audio_enabled']), secure($_POST['max_audio_size']), secure($_POST['audio_extensions']), secure($_POST['file_enabled']), secure($_POST['max_file_size']), secure($_POST['file_extensions']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 's3':
			$_POST['s3_enabled'] = (isset($_POST['s3_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						s3_enabled = %s,
						s3_bucket = %s,
						s3_region = %s,
						s3_key = %s,
						s3_secret = %s ", secure($_POST['s3_enabled']), secure($_POST['s3_bucket']), secure($_POST['s3_region']), secure($_POST['s3_key']), secure($_POST['s3_secret']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'security':
			$_POST['censored_words_enabled'] = (isset($_POST['censored_words_enabled']))? '1' : '0';
			$_POST['reCAPTCHA_enabled'] = (isset($_POST['reCAPTCHA_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						censored_words_enabled = %s, 
						censored_words = %s, 
						reCAPTCHA_enabled = %s, 
						reCAPTCHA_site_key = %s, 
						reCAPTCHA_secret_key = %s", secure($_POST['censored_words_enabled']), secure($_POST['censored_words']), secure($_POST['reCAPTCHA_enabled']), secure($_POST['reCAPTCHA_site_key']), secure($_POST['reCAPTCHA_secret_key']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'paypal':
			$_POST['paypal_enabled'] = (isset($_POST['paypal_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						paypal_enabled = %s, 
						paypal_mode = %s, 
						paypal_id = %s, 
						paypal_secret = %s", secure($_POST['paypal_enabled']), secure($_POST['paypal_mode']), secure($_POST['paypal_id']), secure($_POST['paypal_secret']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'stripe':
			$_POST['creditcard_enabled'] = (isset($_POST['creditcard_enabled']))? '1' : '0';
			$_POST['alipay_enabled'] = (isset($_POST['alipay_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						creditcard_enabled = %s, 
						alipay_enabled = %s, 
						stripe_mode = %s, 
						stripe_test_secret = %s, 
						stripe_test_publishable = %s, 
						stripe_live_secret = %s, 
						stripe_live_publishable = %s", secure($_POST['creditcard_enabled']), secure($_POST['alipay_enabled']), secure($_POST['stripe_mode']), secure($_POST['stripe_test_secret']), secure($_POST['stripe_test_publishable']), secure($_POST['stripe_live_secret']), secure($_POST['stripe_live_publishable']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'bank':
			$_POST['bank_transfers_enabled'] = (isset($_POST['bank_transfers_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						bank_transfers_enabled = %s, 
						bank_name = %s, 
						bank_account_number = %s, 
						bank_account_name = %s, 
						bank_account_routing = %s, 
						bank_account_country = %s, 
						bank_transfer_note = %s", secure($_POST['bank_transfers_enabled']), secure($_POST['bank_name']), secure($_POST['bank_account_number']), secure($_POST['bank_account_name']), secure($_POST['bank_account_routing']), secure($_POST['bank_account_country']), secure($_POST['bank_transfer_note']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'currency':
			/* remove any default currency */
			$db->query("UPDATE system_currencies SET system_currencies.default = '0'") or _error("SQL_ERROR_THROWEN");
			/* set selected currency as default */
			$db->query(sprintf("UPDATE system_currencies SET 
						system_currencies.default = '1' WHERE currency_id = %s", secure($_POST['system_currency'], 'int') )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'limits':
			$db->query(sprintf("UPDATE system_options SET 
						data_heartbeat = %s, 
						chat_heartbeat = %s, 
						offline_time = %s, 
						min_results = %s, 
						max_results = %s, 
						min_results_even = %s, 
						max_results_even = %s", secure($_POST['data_heartbeat']), secure($_POST['chat_heartbeat']), secure($_POST['offline_time']), secure($_POST['min_results']), secure($_POST['max_results']), secure($_POST['min_results_even']), secure($_POST['max_results_even']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'analytics':
			$db->query(sprintf("UPDATE system_options SET 
						analytics_code = %s ", secure($_POST['message']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'affiliates':
			$_POST['affiliates_enabled'] = (isset($_POST['affiliates_enabled']))? '1' : '0';
			$db->query(sprintf("UPDATE system_options SET 
						affiliates_enabled = %s, 
						affiliate_type = %s, 
						affiliate_payment_method = %s, 
						affiliates_min_withdrawal = %s, 
						affiliate_payment_type = %s, 
						affiliates_per_user = %s, 
						affiliates_percentage = %s ", secure($_POST['affiliates_enabled']), secure($_POST['affiliate_type']), secure($_POST['affiliate_payment_method']), secure($_POST['affiliates_min_withdrawal']), secure($_POST['affiliate_payment_type']), secure($_POST['affiliates_per_user']), secure($_POST['affiliates_percentage']) )) or _error("SQL_ERROR_THROWEN");
			break;

		case 'points':
			$_POST['points_enabled'] = (isset($_POST['points_enabled']))? '1' : '0';
			$_POST['points_money_withdraw_enabled'] = (isset($_POST['points_money_withdraw_enabled']))? '1' : '0';
			$_POST['points_money_transfer_enabled'] = (isset($_POST['points_money_transfer_enabled']))? '1' : '0';
			if(!$_POST['points_money_withdraw_enabled'] && !$_POST['points_money_transfer_enabled']) {
				throw new Exception(__("You must enable one method at least, either payments withdrawal requests or wallet transfer"));
			}
			$db->query(sprintf("UPDATE system_options SET 
						points_enabled = %s, 
						points_money_withdraw_enabled = %s, 
						points_payment_method = %s, 
						points_min_withdrawal = %s, 
						points_money_transfer_enabled = %s, 
						points_per_currency = %s, 
						points_per_post = %s, 
						points_per_comment = %s, 
						points_per_reaction = %s,
						points_limit_user = %s,
						points_limit_pro = %s ", secure($_POST['points_enabled']), secure($_POST['points_money_withdraw_enabled']), secure($_POST['points_payment_method']), secure($_POST['points_min_withdrawal']), secure($_POST['points_money_transfer_enabled']), secure($_POST['points_per_currency'], 'int'), secure($_POST['points_per_post'], 'int'), secure($_POST['points_per_comment'], 'int'), secure($_POST['points_per_reaction'], 'int'), secure($_POST['points_limit_user'], 'int'), secure($_POST['points_limit_pro'], 'int') )) or _error("SQL_ERROR_THROWEN");
			break;

		default:
			_error(400);
			break;
	}
	return_json( array('success' => true, 'message' => __("System settings have been updated")) );

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>
<?php
/**
 * ajax -> admin -> design
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

// edit design
try {

	/* prepare */
	$_POST['system_theme_night_on'] = (isset($_POST['system_theme_night_on']))? '1' : '0';
	$_POST['system_theme_mode_select'] = (isset($_POST['system_theme_mode_select']))? '1' : '0';
	$_POST['system_wallpaper_default'] = (isset($_POST['system_wallpaper_default']))? '1' : '0';
	$_POST['system_favicon_default'] = (isset($_POST['system_favicon_default']))? '1' : '0';
	$_POST['system_favicon'] = ($_POST['system_favicon_default'])? '' : $_POST['system_favicon'];
	$_POST['system_ogimage_default'] = (isset($_POST['system_ogimage_default']))? '1' : '0';
	$_POST['system_ogimage'] = ($_POST['system_ogimage_default'])? '' : $_POST['system_ogimage'];
	$_POST['css_customized'] = (isset($_POST['css_customized']))? '1' : '0';
	/* update */
	$db->query(sprintf("UPDATE system_options SET 
		system_theme_night_on = %s,
		system_theme_mode_select = %s,
		system_logo = %s,
		system_wallpaper_default = %s,
		system_wallpaper = %s,
		system_favicon_default = %s,
		system_favicon = %s,
		system_ogimage_default = %s,
		system_ogimage = %s,
		css_customized = %s, 
		css_background = %s,
		css_link_color = %s,
		css_header = %s, 
		css_header_search = %s,
		css_header_search_color = %s,
		css_btn_primary = %s, 
		css_custome_css = %s,
		custome_js_header = %s,
		custome_js_footer = %s ", secure($_POST['system_theme_night_on']), secure($_POST['system_theme_mode_select']), secure($_POST['system_logo']), secure($_POST['system_wallpaper_default']), secure($_POST['system_wallpaper']), secure($_POST['system_favicon_default']), secure($_POST['system_favicon']), secure($_POST['system_ogimage_default']), secure($_POST['system_ogimage']), secure($_POST['css_customized']), secure($_POST['css_background']), secure($_POST['css_link_color']), secure($_POST['css_header']), secure($_POST['css_header_search']), secure($_POST['css_header_search_color']), secure($_POST['css_btn_primary']), secure($_POST['css_custome_css']), secure($_POST['custome_js_header']), secure($_POST['custome_js_footer']) )) or _error("SQL_ERROR_THROWEN");

	return_json( array('callback' => 'window.location.reload();') );

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>
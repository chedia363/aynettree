<?php
/**
 * contact
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('bootstrap.php');

// check if contact enabled
if(!$system['contact_enabled']) {
	// _error(404);
	modal("MESSAGE", __("Message"), __("Contact must be enabled"));
}

// page header
page_header($system['system_title'].' - '.__("Contact Us"));

// page footer
page_footer("contact");

?>
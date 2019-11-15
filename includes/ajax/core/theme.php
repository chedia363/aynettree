<?php
/**
 * ajax -> core -> theme
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// theme mode
if(isset($_POST['mode'])) {
    $expire = time()+2592000;
    $night_mode = ($_POST['mode'] == "night")? '1' : '0';
    /* set cookie */
    setcookie('s_night_mode', $night_mode, $expire, '/');
}

?>
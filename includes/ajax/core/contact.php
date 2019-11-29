<?php
/**
 * ajax -> core -> contact
 * 
 * @package Sngine
 * @author Zamblek
 */

// fetch bootstrap
require('../../../bootstrap.php');

// check AJAX Request
is_ajax();

// contact
try {


	// // // valid inputs
    // if(is_empty($_POST['name']) || is_empty($_POST['user_country']) || is_empty($_POST['City']) || is_empty($_POST['message']) ) {
    
    //      throw new Exception(__("You must fill in all of the fields"));
    // }

    
  
        /* valid inputs */
        if(is_empty($_POST['name'])) {
            throw new Exception(__("You should enter your name"));
        }
        /* valid inputs */
        if(is_empty($_POST['user_country'])) {
            throw new Exception(__("You should select your country"));
        }
        
        if(is_empty($_POST['City'])) {
            throw new Exception(__("You should select your city"));
        }
        if(is_empty($_POST['message'])) {
            throw new Exception(__("You should enter a message"));
        }
         if(is_empty($_POST['user_phone'])) {
            throw new Exception(__("You should enter your mobile Number"));
        }
        // if($_FILES['folder']['name']) {
        //     throw new Exception(__("You have to enter folder"));
        // }

        // $folder =$_FILES['folder']['name']; 
        // if (move_uploaded_file($_FILES["folder"]["tmp_name"], $system['system_url'].'/content/uploads/photos/2019/'.$_FILES['folder']['name'])) {
        //   //  echo "The file ". basename( $_FILES["Photo"]["name"]). " has been uploaded.";
        // } else {
        // //   throw new Exception(__("You have to enter folder"));
        // }


        /* insert */
        $db->query(sprintf("INSERT INTO contact (name, user_country, City, message, folder, user_phone) VALUES (%s, %s, %s, %s, %s, %s)", secure($_POST['name']), secure($_POST['user_country']), secure($_POST['City']), secure($_POST['message']), secure($_FILES['folder']), secure($_POST['user_phone'])) ) or _error("SQL_ERROR_THROWEN");
        /* return */
          // return
     return_json( array('success' => true, 'message' => __("Your message has been sent! We will be back to you soon")) );
   
  
    











    

  

} catch (Exception $e) {
	return_json( array('error' => true, 'message' => $e->getMessage()) );
}

?>
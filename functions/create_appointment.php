<?php
//connect to post controller
include_once (dirname(__FILE__)).'/../controllers/user_controller.php';

if(isset($_POST['submit'])){
    // Grab form inputs
    $name =  $_POST['name'];
    $telephone =  $_POST['telephone'];
    $email =  $_POST['email'];
    $gender =  $_POST['gender'];
    $breed =  $_POST['breed'];
    $appointment_time = $_POST['time'];
    $appointment_date = $_POST['date'];
    $pet_name =  $_POST['petName'];
    
    // echo "hello";

    // create post if not empty
    $newPost = book_new_user($name, $telephone, $email, $gender, $breed, $appointment_time, $appointment_date, $pet_name);
    if($newPost){
        echo '<script>alert("You have successfully booked your appointment"); setTimeout(()=>{window.location.href=`../index.php`},1000) </script>';

    }
    else{
        echo "failed";
        // echo(book_new_user($name, $telephone, $email, $gender, $breed, $appointment_time, $appointment_date, $pet_name));
    }
}
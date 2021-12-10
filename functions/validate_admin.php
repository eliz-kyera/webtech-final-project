<?php
    include_once (dirname(__FILE__)).'/../controllers/user_controller.php';

    function console_log($output, $with_script_tags = true) {
        $js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) . 
        ');';
        if ($with_script_tags) {
            $js_code = '<script>' . $js_code . '</script>';
        }
        echo $js_code;

    }
    if(isset($_POST['login'])){
        $email = $_POST['email'];
        $password = $_POST['password'];
    }

    $output = verifyUser($email, $password);
    if($output){
        header('location: ../display.php');
    }else{
        header('location: ../administrator/adlogin.php');
    }
?>
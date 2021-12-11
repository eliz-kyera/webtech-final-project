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

    if(isset($_POST['submit'])){
        $id = $_POST['id'];
        $name = $_POST['name'];
        $gender = $_POST['gender'];
        $email = $_POST['email'];
        $breed = $_POST['breed'];
        $telephone = $_POST['telephone'];
        $appointment_time = $_POST['appointment_time'];
        $appointment_date = $_POST['appointment_date'];

        // echo $id ."  ";
        // echo $name ."  ";
        // echo $gender ."  ";
        // echo $email ."  ";
        // echo $breed ."  ";
        // echo $telephone ."  ";
        // echo $appointment_time ."  ";
        // echo $appointment_date ."  ";
        
        $res = updateClient($id,$name,$gender,$email,$breed,$telephone,$appointment_time,$appointment_date);
        
        if($res){
            header('location: ../display.php', true);
        }else{
            console_log("Not working");
        }
    } 
        
?>
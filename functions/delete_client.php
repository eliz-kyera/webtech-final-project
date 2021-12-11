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

    // if(isset($_POST)){
    //     $id = $_POST['id'];
    //     $name = $_POST['name'];
    //     $gender = $_POST['gender'];
    //     $email = $_POST['name'];
    //     $breed = $_POST['breed'];
    //     $telephone = $_POST['telephone'];
    //     $appointment_time = $_POST['appointment_time'];
    // } 
    if(isset($_GET['id'])){
        console_log($_GET['id']);
        $client = (getSingleClient($_GET['id']));
        $id = $_GET['id'];
        $name = $client['name'];
        $gender = $client['gender'];
        $email = $client['email'];
        $breed = $client['breed'];
        $telephone = $client['telephone'];
        $appointment_time = $client['appointment_time'];
        $appointment_date = $client['appointment_date'];
        $pet_name = $client['pet_name'];
        console_log($_POST);
        
        $res = deleteClient($id);
        
        if($res){
            header("location: ../display.php", true);
        }else{
            console_log("Not working");
        }
    }

?>
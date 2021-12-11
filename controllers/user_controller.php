<?php
//connect to database class
require_once (dirname(__FILE__)).'/../classes/user_class.php';

function getClients(){
    $user = new User();

    // Run query
    $runQuery = $user->getClients();

    if($runQuery){
        $clients = array();
        while($record = $user->db_fetch()){
            $clients[] = $record;
        }
        return $clients;
    }else{
        return false;
    }
}

function getSingleClient($id){
    // Create new post object
    $user = new User;

    // Run query
    $runQuery = $user->getSingleClient($id);

    if($runQuery){

        $users = $user->db_fetch();
        if(!empty($users)){
            return $users;
        }else{
            return [];
        }
        
    }else{
        return false;
    }
}

function updateClient($id,$name,$gender,$email,$breed,$telephone,$appointment_time){
    $user = new User;

    // Run query
    $runQuery = $user->updateClient($id,$name,$gender,$email,$breed,$telephone,$appointment_time);

    if($runQuery){
        return $runQuery;
    }else{
        return false;
    }
}

function deleteClient($id){
    // Create new post object
    $user = new User;

    // Run query
    $runQuery = $user->deleteClient($id);

    if($runQuery){
        return $runQuery;
    }else{
        return false;
    }
}

function book_new_user($name, $telephone, $email, $gender, $breed, $appointment_time, $appointment_date, $pet_name){
    // create a new instance of user object
    $user = new User;

    // run the query
    $run_query = $user->createclient($name, $telephone, $email, $gender, $breed, $appointment_time, $appointment_date, $pet_name);

    // if successful
    if($run_query){
        return $run_query;
    }else{
        return false;
    }
}

function verifyUser($email, $password){
    // create a new instance of user object
    $user = new User;

    // run the query
    $run_query = $user->verifyUser($email,$password);

    // if successful
    if($run_query){
        // fetch data from database
        $user_email = $user->db_fetch();
        if(empty($user_email)){
            // if empty means the email isn't in the database already
            return false;
        }else{
            return true;
        }
    }else{
        return false;
    }
}
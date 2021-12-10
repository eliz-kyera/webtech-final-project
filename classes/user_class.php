
<?php
//connect to database class
// require __DIR__."/../Config/database_credentials.php";
include_once (dirname(__FILE__)).'/../Config/database_conn.php';
// require __DIR__."/../Config/database_conn.php";

class User extends db_connection{
    // book user
    public function createclient($name, $telephone, $email, $gender, $breed, $appointment_time, $appointment_date, $pet_name){
        $sql = "INSERT INTO `customer`(`name`, `telephone`, `email`, `gender`, `breed`, `appointment_time`, `appointment_date`, `pet_name`) VALUES ('$name', '$telephone', '$email', '$gender', '$breed', '$appointment_time', '$appointment_date', '$pet_name')";

        return $this->db_query($sql);
    }

    public function updateClient($id,$name,$gender,$email,$breed,$telephone,$appointment_time){
        $sql = "UPDATE `customer` SET `name`='$name', `gender`='$gender', `email`='$email', `breed`='$breed', `telephone`='$telephone', `appointment_time`='$appointment_time' WHERE `id`='$id'";

        // run query
        return $this->db_query($sql);
    }

    public function updateAppointmentTime($id, $time){
        $sql = "UPDATE `customer` SET `appointment_time`='$time' WHERE `id`='$id'";

        // run query
        return $this->db_query($sql);
    }

    public function updateAppointmentDate($id, $date){
        $sql = "UPDATE `customer` SET `appointment_date`='$time' WHERE `id`='$id'";

        // run query
        return $this->db_query($sql);
    }

    public function getClients(){
        //sql query
        $sql = "SELECT * FROM `customer`";

        //run query
        return $this->db_query($sql);
    }

    public function getClientId($name){

    }

    public function deleteClient($id){
        // sql query
        $sql = "DELETE FROM `customer` WHERE `id`='$id'";

        // run query
        return $this->db_query($sql);
    }

    public function getSingleClient($id){
        // sql query
        $sql = "SELECT * FROM `customer` WHERE `id`='$id'";

        // run query
        return $this->db_query($sql);
    }

    public function verify_email($email){
        $sql = "SELECT * FROM `username` WHERE `email`='$email'";
        return $this->db_query($sql);
    }
}

    // public function createclient($breed){
    //     $sql = "INSERT INTO `breed`(`breed`) VALUES ($breed)";

    //     return $this->db_query($sql);
    // }

    // public function createclient($pname, $bday, $sex){
    //     $sql = "INSERT INTO `pet`(`pname`, `bday`, `sex`) VALUES ($pname, $bday)";

    //     return $this->db_query($sql);
    // }
    // verify user email
    // public function verify_email($email){
    //     $sql = "SELECT * FROM `person` WHERE `email`='$email'";
    //     return $this->db_query($sql);
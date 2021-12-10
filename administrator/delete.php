<?php 
include "Config\database_conn.php";
if (isset($_GET['id'])) {
	$id = $_GET['id'];

	$sql = "DELETE FROM `customer` WHERE id='$id';";
	if(mysqli_query($this->db, $sql)){
		header("Location: show.php?Record+Deleted+Successfully");
	}

}else{
	header ("Location: show.php?Record+Could+Not+Be+Deleted");
	}
 ?>


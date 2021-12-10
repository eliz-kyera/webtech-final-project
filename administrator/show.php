<!DOCTYPE html>
<html>
<head>
	<title>CRIMINAL RECORDS</title>
	<link rel="stylesheet" href="CSS/show.css">
</head>
<body>	
	<h2>CUSTOMER RECORDS</h2>
	<span> To Add A Customer Record <a href="insert.php">Click Here</a></span>
	<?php 
		include 'Config\database_conn.php';
		$sql = "SELECT * FROM `customers`;";	
		$result = mysqli_query($this->db, $sql);
		?>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Telephone</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Breed</th>
					<th>Appointment_time</th>
					<th>Appointment_date</th>
					<th>PetName</th>
				</tr>
			</thead>
			
		<?php
		while ($row = mysqli_fetch_assoc($result)) {
			echo "<tr>";
			echo "<td>".$row['name']."</td>";
			echo "<td>".$row['telephone']."</td>";
			echo "<td>".$row['email']."</td>";
			echo "<td>".$row['gender']."</td>";
			echo "<td>".$row['breed']."</td>";
			echo "<td>".$row['time']."</td>";
			echo "<td>".$row['date']."</td>";
			echo "<td>".$row['petName']."</td>";
			echo "<td><a href='delete.php?id=".$row['id']."' onClick='return confirm(".'"Are You Sure You Would Like To Delete Record?"'.");' id='delete'>DELETE</a>
			<a href='edit.php?id=".$row['id']."' onClick='return confirm(".'"Are You Sure You Would Like To Edit This Record?"'.");' id='edit'>EDIT</a></td>";
			echo "</tr>";
		}
	?>
	</table>
</body>
</html>
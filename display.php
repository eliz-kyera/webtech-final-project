<?php
include 'Config\database_conn.php';
include_once (dirname(__FILE__)).'/./controllers/user_controller.php';
$result = getClients();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
</head>
<body>
    
    
    
    
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Telephone</th>
          <th scope="col">Email</th>
          <th scope="col">Gender</th>
          <th scope="col">Breed</th>
          <th scope="col">Appointment_time</th>
          <th scope="col">Appointment_date</th>
          <th scope="col">PetName</th>
          <th scope="col"></th>
          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
        <?php
                        foreach($result as $key => $value){
                    ?>
                        <tr>
                            <input type="hidden" name="id" value="<?= $value['id'] ?>">
                            <td>
                              <?= $value['name'] ?>
                              <input type="hidden" name="name" value="<?= $value['name'] ?>">
                              
                            </td>
                            <td>
                              <input type="hidden" name="telephone" value="<?= $value['telephone'] ?>">
                              <?= $value['telephone'] ?>
                            </td>
                            <td>
                              <input type="hidden" name="email" value="<?= $value['email'] ?>">
                              <?= $value['email'] ?>
                            </td>
                            <td>
                              <?= $value['gender'] ?>
                              <input type="hidden" name="gender" value="<?= $value['gender'] ?>">
                            </td>
                            <td>
                              <input type="hidden" name="breed"  value="<?= $value['breed'] ?>">
                              <?= $value['breed'] ?>
                            </td>
                            <td>
                              <input type="hidden" name="appointment_time" value="<?= $value['appointment_time'] ?>">
                              <?= $value['appointment_time'] ?>
                            </td>
                            <td>
                              <input type="hidden" name="appointment_date" value="<?= $value['appointment_date'] ?>">
                              <?= $value['appointment_date'] ?>
                            </td>
                            <td>
                              <input type="hidden" name="pet_name" value="<?= $value['pet_name'] ?>">
                              <?= $value['pet_name'] ?>
                            </td>
                            <td>
                              <a href="admin.php/?id=<?= $value['id'] ?>">
                                <button name="update" class="btn btn-primary">Update</button>
                              </a>
                            </td>
                            <td>
                              <a href="functions/delete_client.php/?id=<?= $value['id'] ?>">
                                <button type="submit" name="delete" class="btn btn-warning">Delete</button>
                              </a>
                            </td>
                        </tr>
                    <?php
                        }
                    ?>
      </tbody>
    </table>
    

</body>
</html>
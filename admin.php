<?php
// connect to database class
include_once (dirname(__FILE__)).'/./controllers/user_controller.php';

// $posts = getPosts();


?>
 

<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/0594667512.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="adminupdate.css">

<title>Admin Update Page</title>
</head>

<body>
<nav class="navbar navbar-expand-md navbar-light pt-5 pb-4">
    <div class="container-xxl">
        <!-- navbar brand / title -->
        <a class="navbar-brand" href="landingpage.html">
            <span class="text-secondary fw-bold">
                <i class="bi bi-book-half"></i>
                Admin dashboard
            </span>
        </a>
        <!-- toggle button for mobile nav -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main-nav"
            aria-controls="main-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

    </div>
    </div>
</nav>

<div class="card col-5" id="login-card">
    <div class="card-body">
        <form class="row g-3" method="post" action="./functions/update_client.php">
        <?php
        function console_log($output, $with_script_tags = true) {
            $js_code = 'console.log(' . json_encode($output, JSON_HEX_TAG) . 
            ');';
            if ($with_script_tags) {
                $js_code = '<script>' . $js_code . '</script>';
            }
            echo $js_code;
        }
        // if(isset($_POST['update'])){
        //     $id = $_POST['id'];
        //     $name = $_POST['name'];
        //     $gender = $_POST['gender'];
        //     $email = $_POST['name'];
        //     $breed = $_POST['breed'];
        //     $telephone = $_POST['telephone'];
        //     $appointment_time = $_POST['appointment_time'];
        //     $appointment_date = $_POST['appointment_date'];
        //     $pet_name = $_POST['pet_name'];
        // } 
        // if(isset($_POST['delete'])){
        //     $deleteResult = deleteClient( $_POST['id']);
        //     if($deleteResult){
        //         console_log($deleteResult);
        //     }else{
        //         console_log("Not working!");
        //     }
        // }
        if(isset($_GET['id'])){
            // console_log($_GET['id']);
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
        }
        ?>
            <h1>Edit client details</h1>
            <div class="row">
                <div class="col-md-10">
                    <label for="title" class="form-label">Name</label>
                    <input type="hidden" name="id"  value="<?= $id ?>" >
                    <input type="text" name = "name" value="<?= $name ?>" class="form-control" id="title">
                </div>
                <div class="col-md-10">
                    <label for="isbn" class="form-label">Telephone</label>
                    <input type="text" name ="telephone" value="<?= $telephone ?>"  class="form-control" id="isbn">
                </div>
            </div>
            <div class="col-md-10">
                <label for="inputAuthor" class="form-label">Email</label>
                <input type="text" name ="email" value="<?= $email ?>"  class="form-control" id="inputAuthor">
            </div>
            <div class="col-md-10">
                <label for="Hardcover" class="form-label">Gender</label>
                <select id="eBook" name="gender" class="form-select">
                    <option selected>Choose...</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>
            <div class="col-md-10">
                <label for="breed" class="form-label">breed</label>
                <input type="text" value="<?= $breed ?>"  name="breed" class="form-control" id="breed">
            </div>
            <div class="col-md-10">
                <label for="time" class="form-label">time</label>
                <input type="text" value="<?= $appointment_time ?>"  name="appointment_time" class="form-control" id="time">
            </div>
            <div class="col-md-10">
                <label for="date" class="form-label">date</label>
                <input type="text" value="<?= $appointment_date ?>" name="appointment_date" class="form-control" id="date">
            </div>
            <div class="col-md-10">
                <label for="petName" class="form-label">petName</label>
                <input type="text" value="<?= $pet_name ?>" name="petName" class="form-control" id="petName">
            </div>
            <div class="d-grip gap-1 d-md-flex justify-content-md-end ">
                <button type= "submit" class="btn btn-primary" value="" name ="submit">Update</button>
            </div>
    </div>
    </label>
</div>
</div>
</form>
</div>
</div>


</body>

</html>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/0594667512.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="..\CSS\register.css">

    <title>Login page</title>
  </head>
  <body>

    <div class="justify-content-center" id="main-section">
        <div class="card col-5" id="login-card">
            <div class="card-body">
                <form class="row g-3" method="post" action="../functions/validate_admin.php">
                    <h3>Admin Log in</h3>
                    <div class="row">
                    <div class="col-12">
                      <label for="inputEmail4" class="form-label">Email</label>
                      <input type="text" class="form-control" id="inputEmail4" name="email">
                    </div>
                    <div class="col-12">
                      <label for="inputPassword4" class="form-label">Password</label>
                      <input type="password" class="form-control" id="inputPassword4" name="password">
                    </div>
                      <div class="col-12" id="button1">
                        <input type="submit" class="btn btn-primary my-2" value="Login" name="login">
                      </div>
                        </label>
                      </div>
                    </div>
                </form>
         
                </div>

           </div>
        </div>
    </div>

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>
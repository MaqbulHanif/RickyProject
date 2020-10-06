<?php include "config/config.php" ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Title</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>
      
      <div class="login_wrapper">
        <div class="animate form login_form">
        <?php
        if(isset($_POST['login'])){
          $user = $mysqli-> real_escape_string(strip_tags($_POST['nama_kry']));
          $pass = $mysqli-> real_escape_string(strip_tags(md5($_POST['password'])));
          $query = $mysqli-> query("SELECT * from user where username = '$user' and password = '$pass'");
          $count = mysqli_num_rows($query);

          if ($count == 1) {
            $data = $query->fetch_array();
            $_SESSION['loged_in'] = true;
            $_SESSION['nama_kry'] = $data['username'];
            echo "Please Wait";

            //multi level
            if ($data['level'] =='admin') 
              header("location:production/index.php");

            //multi level
            if($data['level']=='user')
              header('location:user/dashboard/dashboard.php');

          }else{
            echo "<p class='gagal_login'> Username atau Password salah</p>";
          }
        }
        ?>
          <section class="login_content">
            <form action="" method="post">
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" placeholder="Username" required="" name="nama_kry" />
              </div>
              <div>
                <input type="password" name="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <button class="btn btn-default" type="submit" name="login">Log in</button> 
              </div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1>PT. JAS</h1>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>

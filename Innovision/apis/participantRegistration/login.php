<?php

    include ('../db.php');

    $email = $_POST["email"];
    $password = $_POST["password"];

    if (isset($email) && isset($password)) {

        $query = mysqli_query($conn, "SELECT token FROM users WHERE email='".$email."' AND password='".md5($password)."'");

        if ($query) {

            if (mysqli_num_rows($query) == 1) {

                echo(json_encode(array('status' => 'success', 'result' => mysqli_fetch_array($query)["token"])));
            } else {

                echo(json_encode(array('status' => 'failure', 'result' => 'incorrect email id or password')));
            }
        } else {

            echo(json_encode(array('status' => 'failure', 'result' => 'DB operation failed')));
        }
    } else {

        echo(json_encode(array('status' => 'failure', 'result' => 'email or password not set')));
    }
?>
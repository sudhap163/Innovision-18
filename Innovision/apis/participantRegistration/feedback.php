<?php
    include('../db.php');
    //$vars
    $innoid = $_POST['innoid'];
    if(isset($vars)){

        $query = "INSERT INTO feedback() VALUES()";
        if(mysqli_query($conn,$query)){
                $query1 = "UPDATE users SET feedback_status = 1 WHERE innoid='".$innoid."'";

                if(mysqli_query($conn,$query1)){

                     echo(json_encode(array('status' => 'success', 'message' => 'Feedback recieved')));
                }
                else{
                     echo(json_encode(array('status' => 'failure', 'message' => 'Feedback could not be recieved')));
                }

        }
        else{
             echo(json_encode(array('status' => 'failure', 'message' => 'Db operaton failed')));
        }

    }
    else
    {
        echo(json_encode(array('status' => 'failure', 'message' => 'Fields not set')));
    }
?>
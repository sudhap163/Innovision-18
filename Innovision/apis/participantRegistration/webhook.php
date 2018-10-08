<?php
include ('../db.php');
// echo(json_encode(array('status' => 'success', 'message' => 'I am in webhook')));

$payment_id = $_POST['payment_id'];
$payment_req_id = $_POST['payment_request_id'];
$status = $_POST['status'];
$payment_detail = $_POST['body'];

if(isset($payment_id) && isset($payment_req_id) && $status == 'Credit')
{
    //FIND A RECORD FROM THE TABLE WITH THE payment_id AND UPDATE IT
    $query = "UPDATE users SET payment_staus = 'Y', payment_detail = ".$payment_detail." WHERE payment_id =".$payment_id;

    if(mysqli_num_rows($query) == 1)
    {
         echo(json_encode(array('status' => 'failure', 'message' => 'Payment and Registration Was Successful !!!')));
    }
    else
    {
         echo(json_encode(array('status' => 'failure', 'message' => 'No record found')));
    }

}
else
{
    echo(json_encode(array('status' => 'failure', 'message' => 'Payment Was Unsuccessful')));
}
?>
<?php

	include('../../db.php');

    $eid = $_POST['ca_id'];
    $token = $_POST['token'];

	if($eid != "") {

		$query ="UPDATE users SET through_ca_id ='".$eid."' WHERE token ='".$token."'";
		$result =mysqli_query($conn, $query);

		if ($result) {

			echo(json_encode(array('status' => 'success', 'result' => 'Response was recorded')));
		}

		else {

			//$res = mysqli_fetch_array($result);
			echo(json_encode(array('status' => 'failure', 'result' => 'Could not record response.Try again later')));
		}
	}

?>
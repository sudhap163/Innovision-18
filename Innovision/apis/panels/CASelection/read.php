<?php

	include('../../db.php');
    include('../../panels/CASelection/verifyCAAdmin.php');

	
	if (isset($status) && $status === "success") {
		$query = mysqli_query($conn, "SELECT * FROM other_college");
		$result = array();
		while($res = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
    		$result[] = $res;
		}

		echo(json_encode(array('status' => 'success', 'result' => $result)));
	}
?>
<?php

	include('../../db.php');
    include('./verifyCAAdmin.php');

	if($_SERVER["REQUEST_METHOD"] === "GET") {

		if (isset($status) && $status === "success") {

			$query = mysqli_query($conn, "SELECT * FROM ca_selection_responses");

			$result = array();
			while($res = mysqli_fetch_array($query, MYSQL_ASSOC)) {
	    		$result[] = $res;
			}

			echo(json_encode(array('status' => 'success', 'result' => $result)));
		}
	}

?>
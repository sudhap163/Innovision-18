<?php

	include('../../db.php');

	$cid = $_GET['q'];
	if($_SERVER["REQUEST_METHOD"] === "GET") {
		$query = mysqli_query($conn, "SELECT * FROM ca_selection_responses WHERE ca_applicant_id = ".$cid);
		$result = array();
		while($res = mysqli_fetch_array($query, MYSQLI_ASSOC)) {
    		$result[] = $res;
		}

		echo(json_encode(array('status' => 'success', 'result' => $result)));
	}
?>
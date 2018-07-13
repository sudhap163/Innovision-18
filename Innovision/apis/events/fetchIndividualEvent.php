<?php

	include('../db.php');

	$eid = $_GET['q'];

	if($_SERVER["REQUEST_METHOD"] === "GET" && $eid != "") {

		$query = mysqli_query($conn, "SELECT title, description, rules, judging_criteria, max_par, date, venue, time, category, coordinatorName1, coordinatorContact1, coordinatorName2, coordinatorContact2, image_path FROM events where eid=".$eid);

		if (mysqli_num_rows($query) == 0) {

			echo(json_encode(array('status' => 'failure', 'result' => 'eid not found')));
		}

		else {

			$result = mysqli_fetch_array($query);
			echo(json_encode(array('status' => 'success', 'result' => $result)));
		}
	}

?>
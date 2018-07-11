<?php

	include('../../db.php');

	$eid = $_GET["q"];

	if($_SERVER["REQUEST_METHOD"] === "GET" && $eid != "") {

		$query = mysqli_query($conn, "SELECT * FROM events where eid ='".$eid."'");

		if (mysqli_num_rows($query) == 0) {

			echo(json_encode(array('status' => 'failure', 'message' => 'eid not found')));
		}

		else {

			$query = mysqli_query($conn, "SELECT * FROM events_registration where event_id=".$eid);

			if ($query) {

				$result = array();
				while($res = mysqli_fetch_array($query, MYSQL_ASSOC)) {

		    		$query2 = mysqli_query($conn, "SELECT name, email, phone, college FROM users where inno_id =".$res["inno_id"]);
		    		if ($query2) {

		    			$result[] = mysqli_fetch_array($query2);
		    		}
		    		else {

						echo(json_encode(array('status' => 'failure', 'message' => 'DB query failed')));	    			
		    		}
				}

				echo(json_encode(array('status' => 'success', 'result' => $result)));
			}
			else {

				echo(json_encode(array('status' => 'failure', 'message' => 'DB query failed')));	    			
		   	}
		}
	}

?>
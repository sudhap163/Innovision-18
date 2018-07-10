<?php

	include('../../db.php');

	$inno_id = $_GET["q"];

	if($_SERVER["REQUEST_METHOD"] === "GET" && $inno_id != "") {

		$query = mysqli_query($conn, "SELECT * FROM users where inno_id ='".$inno_id."'");

		if (mysqli_num_rows($query) == 0) {

			echo(json_encode(array('status' => 'failure', 'message' => 'inno_id not found')));
		}

		else {

			$query = mysqli_query($conn, "SELECT * FROM events_registration where inno_id=".$inno_id);

			if ($query) {

				$result = array();
				while($res = mysqli_fetch_array($query, MYSQL_ASSOC)) {

		    		$query2 = mysqli_query($conn, "SELECT * FROM events where eid =".$res["event_id"]);
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
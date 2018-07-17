<?php

	include('../../db.php');

	$id_list = $_POST['id_list'];

	if($_SERVER["REQUEST_METHOD"] === "POST") {

		echo($id_list[0].'<br>');
		echo($id_list[1].'<br>');
		echo($id_list[2].'<br>');

		for ( $i=0; $i<=sizeof($id_list); $i++) {

			echo ('UPDATE ca_selection_responses SET selected = 1 WHERE ca_applicant_id ='.$id_list[$i]);

			$query = mysqli_query( $conn, 'UPDATE ca_selection_responses SET selected = 1 WHERE ca_applicant_id ='.$id_list[$i]);

			if (!$query) {

				echo(json_encode(array('status' => 'failure', 'result' => 'DB operation failed or ca_applicant_id not found')));
			}
		}

		echo(json_encode(array('status' => 'success', 'result' => 'successfully updated')));
	}

?>
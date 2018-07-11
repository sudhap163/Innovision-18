<?php

	// incomplete

	include('../../db.php');

	$id_list = $_POST['id_list'];

	if($_SERVER["REQUEST_METHOD"] === "POST") {

		while ($id_list[]) {


		}

		echo(json_encode(array('status' => 'success', 'result' => $result)));
	}

?>
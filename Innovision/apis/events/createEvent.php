<?php

	include('../db.php');

	if($_SERVER["REQUEST_METHOD"] === "POST") {

		$query = mysqli_query($conn, "");

		

		echo (json_encode($result));
	}

?>
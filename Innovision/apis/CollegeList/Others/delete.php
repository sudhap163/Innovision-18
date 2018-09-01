<?php
include('../../db.php');


	$id = $_POST['id'];
	$query = "DELETE FROM other_college WHERE college_id=".$id;
	$res = mysqli_query($conn, $query);
	if(mysqli_query($conn, $query))
	{
		echo(json_encode(array('status' => 'success', 'result' => 'Deleted')));
	}
?>
<?php
include('../../db.php');
	$id = $_GET['id'];
	$query = "SELECT college FROM other_college WHERE college_id=".$id;
	$res = mysqli_query($conn, $query);

	if(mysqli_query($conn, $query))
	{
		$arr = mysqli_fetch_array($res, MYSQLI_NUM);

		$query2 = "INSERT INTO college (college) VALUES ('".$arr[0]."')";
		$res2 = mysqli_query($conn, $query2);

		if(mysqli_query($conn, $query2))
		{
			$query3 = "DELETE FROM other_college WHERE college_id=".$id;
			$res3 = mysqli_query($conn, $query3);

			if(mysqli_query($conn, $query3))
			{
				echo(json_encode(array('status' => 'success', 'result' => 'Updated')));
			}
		}
	}

?>
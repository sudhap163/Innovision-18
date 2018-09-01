<?php
include('../../db.php');
	$id = $_POST['id'];
	$new_name = $_POST['name'];
	echo $new_name;
	$query0 = "UPDATE other_college SET college = '".$new_name."' WHERE college_id=".$id;
	if(mysqli_query($conn, $query0))
	{
		$query = "SELECT college FROM other_college WHERE college_id=".$id;
		$res = mysqli_query($conn, $query);

		if(mysqli_query($conn, $query))
		{
			$arr = mysqli_fetch_array($res, MYSQLI_NUM);

			$query2 = "INSERT INTO college (college) VALUES ('".$arr[0]."')";
			if(mysqli_query($conn, $query2))
			{
				$query3 = "DELETE FROM other_college WHERE college_id=".$id;

				if(mysqli_query($conn, $query3))
				{
					echo(json_encode(array('status' => 'success', 'result' => 'Updated')));
				}
			}
		}
}

?>
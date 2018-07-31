$(document).ready(function(){
	if(localStorage.eid == null || localStorage.eid == "" || !(localStorage.eid)){
		alert("Problem fetching the event details!");
	}
	else{
		$.ajax({
			type : "GET",
			url : "./apis/events/fetchIndividualEvent.php?q="+localStorage.eid ,
			success : function(data){
				var dataArray = JSON.parse(data);
				if(dataArray["status"] == "success")
				{
					var eventArr = dataArray["result"];
					populate(eventArr);
				}
			}
		});
	}
});

$(document).on("click", ".register", function(){
	if(localStorage.innoID == null || localStorage.innoID == "" || !(localStorage.innoID))
	{
		alert("Please Login First to register.");
	}
	else
	{
		$.ajax({
			type : "POST",
			url : "./apis/events/eventRegistration.php" ,
			data : {
				innoID : localStorage.innoID,
				eid : localStorage.eid
			},
			success : function(data){
				dataArr = JSON.parse(data);
				if(dataArr["status"] == "already registered")
				{
					alert("You have already registered for the event.");
				}
				else if(dataArr["status"] == "registration done")
				{
					alert("Registration Successful !");
				}
				else if(dataArr["status"] == "failure")
				{
					alert("Registration failed! Please try again.");
				}
			}
		});
	}
});
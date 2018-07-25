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
					$(".poster").children("div").html("<img height='200' width='200' class='img-responsive' src='"+eventArr["image_path"]+"'>");
					event_desc = (eventArr["description"]).split("//");
					event_rules = (eventArr["rules"]).split("//");
					event_judging_criteria = (eventArr["judging_criteria"]).split("//");
					for(var i=0 ; i<event_desc.length ; i++)
					{
						$(".desc").append("<p>"+event_desc[i]+"</p>");
					}
					for(var i=0 ; i<event_rules.length ; i++)
					{
						$(".rules").append("<p>"+event_rules[i]+"</p>");
					}
					for(var i=0 ; i<event_judging_criteria.length ; i++)
					{
						$(".criteria").append("<p>"+event_judging_criteria[i]+"</p>");
					}
					$(".details").append("<p>Date of Event: "+eventArr["date"]+"</p><p>Time of Event: "+eventArr["time"]+"</p><p>Venue: "+eventArr["venue"]+"</p>");
					$(".details_coordinator").append("<h2>Coordinator 1</h2><p>Name: "+eventArr["coordinatorName1"]+"</p><p>Contact: "+eventArr["coordinatorContact1"]+"</p><h2>Coordinator 2</h2><p>Name: "+eventArr["coordinatorName2"]+"</p><p>Contact: "+eventArr["coordinatorContact2"]+"</p>");
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
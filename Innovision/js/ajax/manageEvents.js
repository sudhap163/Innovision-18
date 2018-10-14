$(document).on("click", "#delete", function(){
	var event_id = $(this).parents("td").siblings("#eid").html();
	$.ajax({
		type : "POST",
		url : "../apis/events/deleteEvent.php",
		data : {
			eid : event_id
		},
		success : function(data){
			if(JSON.parse(data).status == "success")
			{
				alert("Event successfully deleted!");
			}
			else
			{
				alert("Event deletion failed!");
			}
			window.location.assign("manage_events.html");
		},
		error: function(data){
			alert("Failed in creating request!");
		}
	});
});
// $(document).on("click", ".update", function () {
//     var eid = $(this).parents("tr").find("#eid").text();
//     $.ajax({
//         type: "GET",
//         url: "./apis/events/fetchIndividualEvent.php?q=" + eid,
//         success: function (data) {
//           //code for modal on update button click
//           var dataObj = JSON.parse(data);
//           var dataArray = dataObj.result;
//           var temp = '';
//           temp = '<div style="display:none" value="' + dataArray.eid + '" id="eid"></div>  <div class="form-group"><label for= "event_name" > Event Name</label ><input type="text" id="title" name="title" value="' + dataArray.title + '" class="form-control" />  </div><div class="form-group"><label for="message-text" class="col-form-label">Description:</label><textarea class="form-control" value="' + dataArray.description + '" id="desc" name="description"></textarea></div><div class="form-group"><label for="message-text" class="col-form-label">Event Rules:</label><textarea class="form-control" value="' + dataArray.rules + '" id="rules" name="rules"></textarea></div><div class="form-group"><label for="message-text" class="col-form-label">Judging Criteria:</label><textarea class="form-control" value="' + dataArray.judging_criteria + '" id="jc" name="judging_criteria"></textarea></div><div class="form-group"><label for="date">Date1:</label><br><input type="date" id="date" name="date" value="' + dataArray.date + '"></div><div class="form-group"><label for="date1">Date2:</label><br><input type="date" id="date1" name="date1" value="' + dataArray.date1 + '"></div><div class="form-group"><label for="time">Time1</label><input type="time" id="time" value="' + dataArray.time + '" class="form-control" name="time"/></div><div class="form-group"><label for="time">Time2</label><input type="time" id="time1" value="' + dataArray.time1 + '" class="form-control" name="time1"/></div><div class="form-group"><label for="venue">Venue</label><input type="text" id="venue" value="' + dataArray.venue + '" class="form-control" name="venue" /></div><div class="form-group"><label for="category">Category</label><input type="text" id="category" value="' + dataArray.category + '" class="form-control" name="category"/></div><div class="form-group"><label for="image-path">Image Path</label><img src="' + dataArray.image_path + '"></div><h4>Coordinator one</h4><div class="form-group"><label for="full_name_1">Full Name</label><input type="text" id="full_name_1" value="' + dataArray.coordinatorName1 + '" class="form-control" name="coordinatorName1"/></div><div class="form-group"><label for="contact_1">Contact</label><input type="tel" id="contact_1" value="' + dataArray.coordinatorContact1 + '" class="form-control" name="coordinatorContact1"/></div><h4>Coordinator two</h4><div class="form-group"><label for="full_name_2">Full Name</label><input type="text" id="full_name_2" value="' + dataArray.coordinatorName2 + '" class="form-control" name="coordinatorName2"/></div><div class="form-group"><label for="contact_2">Contact</label><input type="tel" id="contact_2" value="' + dataArray.coordinatorContact2 + '" class="form-control" name="coordinatorContact2"/></div>';
//           $("#updateEvents").append(temp);
//           update_data(dataArray);
//         },
//         error: function (data) {
//         	console.log(data);
//         }
//     });
//     $(document).on("click","#submit_it", function(){
//     		var formobj = {};
//     		var inputArr = $("#updateEvents").find("input");
//     		var textAreaArr = $("#updateEvents").find("textarea");
//     		for(var i=0;i<inputArr.length;i++)
//     		{
//     			formobj[inputArr[i].attributes["name"].value] = inputArr[i].val();
//     		}
//     		for(var i=0;i<textAreaArr.length;i++)
//     		{
//     			formobj[textAreaArr[i].attributes["name"].value] = textAreaArr[i].val();
//     		}
//     		$.ajax({
//     			type : "POST",
//     			url : "../apis/events/updateEvent.php",
//     			data: {
//     				eid : data_array.eid,
//     				update : formobj
//     			},
//     			success : function(data){
//     				if(data.status == "success")
//     				{
//     					alert("Event info successfully updated.");
//     				}
//     				else
//     				{
//     					alert(data.message);
//     				}
//     			},
//     			error : function(data){
//     				alert("Failed in processing request.");
//     			}
//     		});
//     	});

// });
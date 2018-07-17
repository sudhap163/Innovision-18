$(document).ready(function(){
	$.ajax({
		type : "GET" ,
		url : "fetchAllEvents.php" ,
		success : function(data){
			var dataArray = JSON.parse(data);
			if(dataArray["status"] == "success"){
				var eventArray = dataArray["result"];
				var event_flagships = [];
				var event_events = [];
				var event_workshops = [];
				var event_exhibitions = [];
				var event_cultural = [];
				for(var i = 0 ; i < eventArray.length() ; i++)
				{

					if(eventArray[i]["category"] == "flagships")
					{
						event_flagships.append(eventArray[i]);
					}
					else if(eventArray[i]["category"] == "events")
					{
						event_events.append(eventArray[i]);
					}
					else if(eventArray[i]["category"] == "workshops")
					{
						event_workshops.append(eventArray[i]);
					}
					else if(eventArray[i]["category"] == "exhibitions")
					{
						event_exhibitions.append(eventArray[i]);
					}
					else if(eventArray[i]["category"] == "cultural")
					{
						event_cultural.append(eventArray[i]);
					}
				}
				//flagship
				if(event_flagships.length() == 0)
				{
					var str = "<p>No events to display.</p>";
					$("#flagship").child("center").append(str);
				}
				else
				{
					if((event_flagships.length())%3 == 0)
					{
						var index = 0;
						while(index < (event_flagships.length())/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_flagships[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_flagships[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_flagships[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_flagships[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_flagships[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_flagships[3*index+2]["image_path"]+'"></div></a>';
							$("#flagship").child("center").append(str);
							index = index + 1;
						}
					}
					else
					{
						var index = 0;
						while(index < (event_flagships.length()-(event_flagships.length())%3)/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_flagships[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_flagships[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_flagships[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_flagships[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_flagships[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_flagships[3*index+2]["image_path"]+'"></div></a>';
							$("#flagship").child("center").append(str);
							index = index + 1;
						}
						if((event_flagships.length())%3 == 1)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_flagships[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_flagships[3*index]["image_path"]+'"></div></a>';
						}
						else if((event_flagships.length())%3 == 2)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_flagships[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_flagships[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_flagships[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_flagships[3*index+1]["image_path"]+'"></div></a>';
						}
						$("#flagship").child("center").append(str2);
					}
				}
				//events
				if(event_events.length() == 0)
				{
					var str = "<p>No events to display.</p>";
					$("#events").child("center").append(str);
				}
				else{
					if((event_events.length())%3 == 0)
					{
						var index = 0;
						while(index < (event_events.length())/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_events[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_events[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_events[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_events[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_events[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_events[3*index+2]["image_path"]+'"></div></a>';
							$("#events").child("center").append(str);
							index = index + 1;
						}
					}
					else
					{
						var index = 0;
						while(index < (event_events.length()-(event_events.length())%3)/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_events[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_events[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_events[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_events[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_events[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_events[3*index+2]["image_path"]+'"></div></a>';
							$("#events").child("center").append(str);
							index = index + 1;
						}
						if((event_events.length())%3 == 1)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_events[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_events[3*index]["image_path"]+'"></div></a>';
						}
						else if((event_events.length())%3 == 2)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_events[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_events[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_events[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_events[3*index+1]["image_path"]+'"></div></a>';
						}
						$("#events").child("center").append(str2);
					}					
				}
				//workshops
				if(event_workshops.length() == 0)
				{
					var str = "<p>No events to display.</p>";
					$("#workshops").child("center").append(str);
				}
				else{
					if((event_workshops.length())%3 == 0)
					{
						var index = 0;
						while(index < (event_workshops.length())/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_workshops[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_workshops[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_workshops[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_workshops[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_workshops[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_workshops[3*index+2]["image_path"]+'"></div></a>';
							$("#workshops").child("center").append(str);
							index = index + 1;
						}
					}
					else
					{
						var index = 0;
						while(index < (event_workshops.length()-(event_workshops.length())%3)/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_workshops[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_workshops[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_workshops[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_workshops[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_workshops[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_workshops[3*index+2]["image_path"]+'"></div></a>';
							$("#workshops").child("center").append(str);
							index = index + 1;
						}
						if((event_workshops.length())%3 == 1)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_workshops[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_workshops[3*index]["image_path"]+'"></div></a>';
						}
						else if((event_workshops.length())%3 == 2)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_workshops[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_workshops[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_workshops[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_workshops[3*index+1]["image_path"]+'"></div></a>';
						}
						$("#workshops").child("center").append(str2);
					}					
				}
				//exhibitions
				if(event_exhibitions.length() == 0)
				{
					var str = "<p>No events to display.</p>";
					$("#exhibitions").child("center").append(str);
				}
				else{
					if((event_exhibitions.length())%3 == 0)
					{
						var index = 0;
						while(index < (event_exhibitions.length())/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_exhibitions[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_exhibitions[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_exhibitions[3*index+2]["image_path"]+'"></div></a>';
							$("#exhibitions").child("center").append(str);
							index = index + 1;
						}
					}
					else
					{
						var index = 0;
						while(index < (event_exhibitions.length()-(event_exhibitions.length())%3)/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_exhibitions[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_exhibitions[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_exhibitions[3*index+2]["image_path"]+'"></div></a>';
							$("#exhibitions").child("center").append(str);
							index = index + 1;
						}
						if((event_exhibitions.length())%3 == 1)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_exhibitions[3*index]["image_path"]+'"></div></a>';
						}
						else if((event_exhibitions.length())%3 == 2)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_exhibitions[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_exhibitions[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_exhibitions[3*index+1]["image_path"]+'"></div></a>';
						}
						$("#exhibitions").child("center").append(str2);
					}					
				}
				//cultural
				if(event_cultural.length() == 0)
				{
					var str = "<p>No events to display.</p>";
					$("#cultural").child("center").append(str);
				}
				else{
					if((event_cultural.length())%3 == 0)
					{
						var index = 0;
						while(index < (event_cultural.length())/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_cultural[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_cultural[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_cultural[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_cultural[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_cultural[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_cultural[3*index+2]["image_path"]+'"></div></a>';
							$("#cultural").child("center").append(str);
							index = index + 1;
						}
					}
					else
					{
						var index = 0;
						while(index < (event_cultural.length()-(event_cultural.length())%3)/3)
						{
							var str = '<a href="event_individual.html" target="_blank" value="'+event_cultural[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_cultural[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_cultural[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_cultural[3*index+1]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_cultural[3*index+2]["eid"]+'"><div class="card wow fadeInRight hvr-grow-rotate-left"><img class="img-responsive" src="'+event_cultural[3*index+2]["image_path"]+'"></div></a>';
							$("#cultural").child("center").append(str);
							index = index + 1;
						}
						if((event_cultural.length())%3 == 1)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_cultural[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_cultural[3*index]["image_path"]+'"></div></a>';
						}
						else if((event_cultural.length())%3 == 2)
						{
							var str2 = '<a href="event_individual.html" target="_blank" value="'+event_cultural[3*index]["eid"]+'"><div class="card wow fadeInLeft hvr-grow-rotate-right"><img class="img-responsive" src="'+event_cultural[3*index]["image_path"]+'"></div></a><a href="event_individual.html" target="_blank" value="'+event_cultural[3*index+1]["eid"]+'"><div class="card wow fadeInUp hvr-grow"><img class="img-responsive" src="'+event_cultural[3*index+1]["image_path"]+'"></div></a>';
						}
						$("#cultural").child("center").append(str2);
					}					
				}
			}
		}
	});
});
$(document).ready(function(){
    $.ajax({
        type: "GET",
        url : "../apis/participantRegistration/fetch_certificate.php?inno_id="+localStorage.inno_id,
        success: function(data){
            if(JSON.parse(data).status == "success")
            {
                var dataArr = JSON.parse(data).result;
                for(var i=0;i<dataArr.length;i++)
                {
                    $(".certificates").append('<div style="display: block"><a href="'+abc+'" download><span class="fa fa-download"></span></a> <span>CERTIFICATE '+(i+1)+'</span></div>');
                }
            }
            else
            {
                console.log(JSON.parse(data).result);
            }
        },
        error: function(data){
            console.log("Request for fetching certificates failed.");
        }
    });
});
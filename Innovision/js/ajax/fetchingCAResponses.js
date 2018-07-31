var temp = '';
$(document).ready(function () {
  $.ajax({
    type: "GET",
    url: "./apis/panels/CASelection/displayResponses.php?id="+localStorage.ca_admin_token,
    success: function (data) {
        console.log(data);
        var data_obj = JSON.parse(data);
        if(data_obj.status == "success")
        {
          var dataArray = data_obj.result;
          populate(dataArray);
        }
      }
    },
    error: function (data) {
      console.log(data);
    }
  });
});
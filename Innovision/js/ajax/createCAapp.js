$(document).on("click", ".submitform", function () {
    // console.log($("#q4").val());
    $.ajax({
        type: "POST",
        url: "../apis/CASelectionApplication/createCAApplication.php",
        data: {
            q1: $("#q1").val().toString(),
            q2: $("#q2").val().toString(),
            q3: $("#q3").val().toString(),
            q4: $("#q4").val().toString(),
            q5: $("#q5").val().toString(),
            q6: $("#q6").val().toString(),
            q7: $("#q7").val().toString(),
            q8: $("#q8").val().toString(),
            q9: $("#q9").val().toString(),
            q10: $("#q10").val().toString(),
            q11: $("#q11").val().toString(),
            q12: $("#q12").val().toString(),
            q13: $("#q13").val().toString(),
            q14: $("#q14").val().toString()
        },
        success: function (data) {
            swal(JSON.parse(data).status, JSON.parse(data).result);
            //console.log(data);
        },
        error: function (data) {
            swal("Failure", "Could not process request! Try again later.", "error");
            //console.log(data);
        }

    });
});
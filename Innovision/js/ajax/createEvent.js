$(document).on("click", "#add", function () {
    alert("Hii");
    var formObj = new FormData();
    formObj.append("title", $("#title").val().toString());
    formObj.append("description", $("#desc").val().toString());
    formObj.append("rules", $("#rules").val().toString());
    formObj.append("judging_criteria", $("#jc").val());
    formObj.append("date", $("#date").val().toString());
    formObj.append("venue", $("#venue").val().toString());
    formObj.append("time", $("#time").val().toString());
    formObj.append("category", $("#category").val().toString());
    formObj.append("max_par", $("#max_participants").val().toString());
    formObj.append("coordinatorName1", $("#full_name_1").val().toString());
    formObj.append("coordinatorContact1", $("#contact_1").val().toString());
    formObj.append("coordinatorName2", $("#full_name_2").val().toString());
    formObj.append("coordinatorContact2", $("#contact_2").val().toString());
    formObj.append("image", $("#img_path").prop("files")[0]);

    // console.log($("#title").val().toString());
    // console.log($("#desc").val().toString());
    // console.log($("#rules").val().toString());
    // console.log($("#jc").val().toString());
    // console.log($("#date").val().toString());
    // console.log($("#time").val().toString());
    // console.log($("#venue").val().toString());
    // console.log($("#category").val().toString());
    // console.log($("#max_participants").val().toString());
    // console.log($("#full_name_1").val().toString());
    // console.log( $("#contact_1").val().toString());
    // console.log($("#full_name_2").val().toString());
    // console.log( $("#contact_2").val().toString());

    console.log(formObj);
    $.ajax({
        type: "POST",
        url: "http://localhost/Innovision/apis/events/createEvent.php",
        cache: false,
        contentType: false,
        processData: false,
        data: formObj
            // title: $("#title").val().toString(),
            // description: $("#desc").val().toString(),
            // rules: $("#rules").val().toString(),
            // judging_criteria: $("#jc").val().toString(),
            // date: $("#date").val().toString(),
            // venue: $("#venue").val().toString(),
            // time: $("#time").val().toString(),
            // category: $("#category").val().toString(),
            // max_par: $("#max_participants").val().toString(),
            // coordinatorName1: $("#full_name_1").val().toString(),
            // coordinatorContact1: $("#contact_1").val().toString(),
            // coordinatorName2: $("#full_name_2").val().toString(),
            // coordinatorContact2: $("#contact_2").val().toString(),

            ,
        success: function (data) {
            console.log(data);
        },
        error: function (data) {
            console.log(data);
        }
    });
});
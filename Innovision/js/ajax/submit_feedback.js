$(document).on("click", ".submit_feedback", function(){
    //var inno_id = localStorage.inno_id;
    //var name = localStorage.name;
    //var college = localStorage.college;
    var liked = $("#liked_event").val();
    var disliked = $("#disliked_event").val();
    var ratings = $("#ratings").val();
    var suggestions = $("#suggest_improve").val();
    var last = $(":checked").val();
    console.log(last);
});
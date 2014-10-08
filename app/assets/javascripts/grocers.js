$(document).ready(function() {

$(document).on("click", '.grocers_search', function() {
   
  $.ajax({
      url: "/grocers_search",
      dataType: "script",
      type: "GET",
      data: {q: $('.grocer_search').val() }
    })
  })
$(document).on("click", '.quantity_decrease', function() {
  console.log("start");
  $(function() {
    $("#quantity").keyup(function() {
        var q = $("#quantity").val();
        var x = $("1").val();
        $("#new_quantity").val(q - x);
$.ajax({
      url: $(this).attr("need_path"),
      dataType: "script",
      type: "GET",
    })
  })
    });
});
  
})



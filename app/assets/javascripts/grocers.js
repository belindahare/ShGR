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
        console.log("middle")
$.ajax({
      url: "/quantity_partial",
      dataType: "script",
      type: "PATCH",
      data: {need: {quantity: $(this).attr('need_quantity_decrease')}}
    })
  console.log("end")
  })
    });
});
  




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
    console.log("middle")
    console.log($(this).attr("belindas_awesome_route_of_doom"))
    $.ajax({
      url: $(this).attr("belindas_awesome_route_of_doom"),
      dataType: "script",
      type: "PATCH",
      data: {need: {quantity: $(this).attr('need_quantity_decrease')}}
    })
    console.log("end")
  })
});
  




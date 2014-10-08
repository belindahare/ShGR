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
   
  $.ajax({
      url: "/",
      dataType: "script",
      type: "GET",
      data: {q: $('.quantity').val() }
    })
  })
})


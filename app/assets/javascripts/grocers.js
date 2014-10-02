$(document).ready(function() {

$(document).on("click", '.grocers_search', function() {
    console.log($('.grocers_search').val())
  $.ajax({
      url: "/grocers_search",
      dataType: "script",
      type: "GET",
      data: {q: $('.grocer_search').val() }
    })
  })
})

$(document).ready(function() {

$(document).on("click", '.grocer_search', function() {
    console.log($('.grocers_search').val())
  $.ajax({
      url: "/grocers",
      dataType: "script",
      type: "GET",
      data: {q: $('.grocers_search').val()}
  })
})

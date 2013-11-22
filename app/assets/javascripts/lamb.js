$(document).ready(function() {
  $("#create").on("click", createLamb);
});

function createLamb(e) {
  e.preventDefault();
  var newLamb = {
    lamb: {
      is_silent: true
    }
  };

  $.ajax({
    type: "POST",
    url: "/lambs.json",
    data: newLamb
  })
  .done(function(data) {
    console.log(data)
    $li = $("<li>").text("Lamb " + data.id + ": " + data.is_silent);
    $("#view_lambs").append($li);
  });

}


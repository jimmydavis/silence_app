$(document).ready(function() {
  $("#create").on("click", createLamb);
  $("li").on("click", updateLamb);
});

function createLamb(e) {
  e.preventDefault();

  var newLamb = {
    lamb: {}
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


function updateLamb(e) {
  e.preventDefault();
  var updatedLamb = {
    lamb: {
      is_silent: false
    }
  };

  $.ajax({
    type: "POST",
    url: "/lambs.json",
    data: updatedLamb
  })
  .done(function(data) {
    console.log(data)
    $li = $("<li>").text("Lamb " + data.id + ": " + data.is_silent);
  })
}


$(document).on('keyup', '#text', function () {
  var value;
  value = $('#text').val();
  $.ajax({
    type: "PUT",
    url: window.location.pathname,
    data: { text: value }
  });
});

// ---
// generated by coffee-script 1.9.2
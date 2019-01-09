document.addEventListener('DOMContentLoaded', function() {
  $.ajax({
    url: 'https://raw.githubusercontent.com/hlian/slack-night-mode/master/css/raw/variants/solarized-dark.css',
    success: function(css) {
      $("<style></style>").appendTo('head').html(css);
    }
  });
});

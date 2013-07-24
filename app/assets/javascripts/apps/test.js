define([
    "main", "views/view_first", "views/view_second"
  ],
  function(
    Main,
    ViewFirst,
    ViewSecond
  ) {
    $(document).ready(function() {
      new ViewFirst;
      new ViewSecond;
    })
  }
);



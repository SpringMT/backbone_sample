define("apps/sample", ["main", "views/view_first", "views/view_second"], function(e, ViewFirst, ViewSecond) {
  $(document).ready(function() {
    new ViewFirst;
    new ViewSecond;
  })
});



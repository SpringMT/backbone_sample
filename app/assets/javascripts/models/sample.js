define([
    "main"
  ],
  function(
    Main
  ) {
    var Sample = Backbone.Model.extend({
      validate: function(attr) {
        var name = attr.name;
        if (!name || name == '') {
          return 'Error!';
        }
      }
    });
    return Sample;
  }
);


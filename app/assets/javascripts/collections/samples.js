define([
    "main", 'models/sample'
  ],
  function(
    Main,
    Sample
  ) {
    var Samples = Backbone.Collection.extend({
      url: '/samples',
      model: Sample
    });
    return Samples;
  }
);



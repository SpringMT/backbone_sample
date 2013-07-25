define([
    "main"
  ],
  function(
    Main
  ) {
    var Contact = Backbone.Model.extend({
      urlRoot: '/contancts',
    });
    return Contact;
  }
);


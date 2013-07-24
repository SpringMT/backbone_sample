define(["main"], function (Main) {
  var ViewFirst = Backbone.View.extend({
    el: $("#viewFirst"),
    initialize: function() {
      //this.$el
      alert("initialize view first");
    },
    events: {
      'click p': 'alertFirst'
    },
    alertFirst: function(e) {
      alert("p first");
    },
  });
  return ViewFirst;
});



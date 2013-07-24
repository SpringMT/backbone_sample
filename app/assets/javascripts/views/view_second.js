define(["main"], function(Main) {
  var ViewSecond = Backbone.View.extend({
    el: $("#viewSecond"),
    initialize: function() {
      //this.$el
    },
    events: {
      'click p': 'alertFirst'
    },
    alertFirst: function(e) {
      alert("p second");
    },
  });
  return ViewSecond;
});



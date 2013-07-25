define([
    "main"
  ],
  function(
    Main
  ) {
    var SampleFirst = Backbone.View.extend({
      events: {
        'submit form': 'submitSample'
      },

      initialize: function() {
        this.listenTo(this.collection, 'reset', this.showAll);
        this.listenTo(this.collection, 'add', this.addOne);
        this.collection.fetch({reset: true});
      },

      // view メソッド
      showAll: function() {
        var current = this;
        this.collection.each(function(model, index) {
          current.$('#list').append('<p>' + model.get('name') + '</p>');
          current.$('#list2').append('<p>' + model.get('name') + '</p>');
        });
      },

      addOne: function(model, collection, option) {
        this.$('#list').append('<p>' + model.get('name') + '</p>');
        this.$('#list2').append('<p>' + model.get('name') + '</p>');
      },

      // controllerメソッド
      submitSample: function() {
        var newName = this.$('#sample_name').val();
        var token = $('meta[name="csrf-token"]').attr('content');
        this.collection.create({name: newName, authenticity_token: token});
        this.$('#sample_name').val('');
        return false;
      }
    });

    return SampleFirst;
  }
);



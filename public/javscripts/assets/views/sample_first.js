define(["main"],function(e){var t=Backbone.View.extend({events:{"submit form":"submitSample"},initialize:function(){this.listenTo(this.collection,"reset",this.showAll),this.listenTo(this.collection,"add",this.addOne),this.collection.fetch({reset:!0})},showAll:function(){var e=this;this.collection.each(function(t,n){e.$("#list").append("<p>"+t.get("name")+"</p>"),e.$("#list2").append("<p>"+t.get("name")+"</p>")})},addOne:function(e,t,n){this.$("#list").append("<p>"+e.get("name")+"</p>"),this.$("#list2").append("<p>"+e.get("name")+"</p>")},submitSample:function(){var e=this.$("#sample_name").val(),t=$('meta[name="csrf-token"]').attr("content");return this.collection.create({name:e,authenticity_token:t}),this.$("#sample_name").val(""),!1}});return t});
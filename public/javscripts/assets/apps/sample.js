define("views/view_first",["main"],function(e){var t=Backbone.View.extend({el:$("#viewFirst"),initialize:function(){},events:{"click p":"alertFirst"},alertFirst:function(e){alert("p first")}});return t}),define("views/view_second",["main"],function(e){var t=Backbone.View.extend({el:$("#viewSecond"),initialize:function(){},events:{"click p":"alertFirst"},alertFirst:function(e){alert("p second")}});return t}),define("apps/sample",["main","views/view_first","views/view_second"],function(e,t,n){$(document).ready(function(){new t,new n})});
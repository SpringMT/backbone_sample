require.config({
  //urlArgs: 'bust=' + (new Date().getTime()),
  enforceDefine: true,
  paths: {
    jquery: "libs/jquery-1.10.2.min",
    underscore: "libs/underscore",
    backbone: "libs/backbone",
  },
  shim: {
    underscore: {
      exports: "_"
    },
    backbone: {
      deps: [
        "jquery", "underscore"
      ],
      exports: "Backbone"
    },
  }
});
define([
  "jquery", "underscore", "backbone"
], function($, _, Backbone) {
  _.templateSettings = {
    interpolate: /\{\{\=(.+?)\}\}/g,
    evaluate: /\{\{(.+?)\}\}/g
  }
});


define([
    "main",'views/sample_first', 'collections/samples'
  ],
  function(
    Main,
    SampleFirst,
    Samples
  ) {
    var samples = new Samples;
    new SampleFirst({el: $('#sample1'), collection: samples});
  }
);



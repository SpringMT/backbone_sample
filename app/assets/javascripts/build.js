({
  //appDir: './',
  baseUrl:'./scripts',
  dir: './dists',
  paths: {
    jquery: "libs/jquery-1.10.2.min",
    underscore: "libs/underscore",
    backbone: "libs/backbone",
  },
  modules: [
    {
      name: 'main',
    },
    {
      name: 'apps/sample',
      exclude: ['main'],
    },
  ]
})



({
  appDir: './',
  baseUrl:'.',
  dir: '../../../public/javscripts/assets',
  mainConfigFile: './main.js',
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



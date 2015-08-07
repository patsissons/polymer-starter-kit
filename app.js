require('app').on('ready', function() {
  require('electron-compile').init();
  require('./app.coffee');
})

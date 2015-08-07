app = require('app')
BrowserWindow = require('browser-window')
path = require('path')

win = new BrowserWindow({
  title: 'Polymer Starter Kit, Electron Edition',
  width: 860,
  height: 950,
  show: false
})

win.loadUrl('file://' + path.join(__dirname, 'app/index.html#' + JSON.stringify(process.argv.slice(2))))
win.show()

#setTimeout(function() { win.openDevTools() }, 2000);
setTimeout ( -> win.openDevTools() ), 2000

'use strict'

# Grab a reference to our auto-binding template
# and give it some initial binding values
# Learn more about auto-binding templates at http://goo.gl/Dx1u2g
app = document.querySelector '#app'

app.displayInstalledToast = () ->
  document.querySelector('#caching-complete').show()

# Listen for template bound event to know when bindings
# have resolved and content has been stamped to the page
app.addEventListener 'dom-change', () ->
  console.log 'Our app is ready to rock!'

# See https://github.com/Polymer/polymer/issues/1381
window.addEventListener 'WebComponentsReady', () ->
  console.log 'imports are loaded and elements have been registered'

# Close drawer after menu item is selected if drawerPanel is narrow
app.onMenuSelect = () ->
  drawerPanel = document.querySelector '#paperDrawerPanel'
  if drawerPanel.narrow
    drawerPanel.closeDrawer()

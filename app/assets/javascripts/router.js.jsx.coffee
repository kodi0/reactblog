reactWrapper = document.getElementById 'react-container'

Router = Backbone.Router.extend
  routes:
    '': "index"
    'account': 'account'

  index: ->
    React.render `<MainPage />`, reactWrapper

  account: ->
    React.render `<UserAccount  />`, reactWrapper

window.router = new Router()

Backbone.history.start()
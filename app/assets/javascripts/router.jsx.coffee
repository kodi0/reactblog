reactWrapper = document.getElementById 'react-container'

Router = Backbone.Router.extend
  routes:
    '': "index"
    'account': 'account'

  index: ->
    React.render `<PostBox collection = { new AllPostsCollection() } />`, reactWrapper

  account: ->
    React.render `<UserPostBox collection = { new PostsCollecion() } />`, reactWrapper

window.router = new Router()

Backbone.history.start()

# Requires models/post

# React rendes all the components at this id
reactWrapper = document.getElementById 'react-container'

# Collections
# MainPagePostsCollection
# UserPostsCollection

mainPagePostsCollection = new Reactapp.Collections.MainPagePostsCollection()
userPostsCollection = new Reactapp.Collections.UserPostsCollection()

# Access to 
# main page via /
# user account via #account

Router = Backbone.Router.extend
  routes:
    '': "index"
    'account': 'account'
  index: ->
    React.render `<MainPage posts = {mainPagePostsCollection} />` , reactWrapper
  account: ->
    React.render `<UserAccount posts = {userPostsCollection} />`, reactWrapper

window.router = new Router()

Backbone.history.start()
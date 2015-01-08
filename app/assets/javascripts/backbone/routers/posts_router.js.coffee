class Reactapp.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->
    @posts = new Reactapp.Collections.PostsCollection()
    @posts.reset options.posts

  routes:
    "new"      : "newPost"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPost: ->
    @view = new Reactapp.Views.Posts.NewView(collection: @posts)
    $("#posts").html(@view.render().el)

  index: ->
    @view = new Reactapp.Views.Posts.IndexView(collection: @posts)
    $("#posts").html(@view.render().el)

  show: (id) ->
    post = @posts.get(id)

    @view = new Reactapp.Views.Posts.ShowView(model: post)
    $("#posts").html(@view.render().el)

  edit: (id) ->
    post = @posts.get(id)

    @view = new Reactapp.Views.Posts.EditView(model: post)
    $("#posts").html(@view.render().el)

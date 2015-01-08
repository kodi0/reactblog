class Reactapp.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    body: null

class Reactapp.Collections.PostsCollection extends Backbone.Collection
  model: Reactapp.Models.Post
  url: '/posts'

window.UserPostBox = React.createClass
  componentDidMount: ->
    this.props.collection.on 'add change remove', =>
      this.forceUpdate()
    this.props.collection.fetch()

  handlePostSubmit: (post) ->
    this.props.collection.create post


  render: ->
    return (
      `<div className = 'user-post-box'>
          <PostForm  onPostSubmit = { this.handlePostSubmit } />
          <h2>My posts</h2>
        <Posts data = { this.props.collection.toJSON() } />
      </div>`
    )

window.PostModel = Backbone.Model.extend({})

window.PostsCollecion = Backbone.Collection.extend
  model: PostModel
  url: '/posts'
  sync: (method, model, options) ->
    options.url = if method == 'read' then '/account/posts' else '/posts'
    Backbone.sync method, model, options


UserPostBox = React.createClass
  componentDidMount: ->
    this.props.collection.on 'add', =>
      this.forceUpdate()
      console.log 'rendered!'
    this.props.collection.fetch
      url: '/account/posts.json'
      success: =>
        console.log 'loaded', this.props.collection
      error: ->
        console.error 'error!'

  handlePostSubmit: ->
    # todo

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

usersPosts = new PostsCollecion()

React.render `<UserPostBox collection = { usersPosts } />`, document.getElementById('user-post-box')

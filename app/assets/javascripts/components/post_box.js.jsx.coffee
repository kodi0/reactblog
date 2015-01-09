window.PostBox = React.createClass
  handlePostSubmit: (post)->
    this.props.collection.create post

  getInitialState: ->
    data: []

  componentDidMount: ->
    this.props.collection.on 'add change remove', =>
      this.forceUpdate()
    this.props.collection.fetch()

  render: ->
    return (
       `<div className="postBox">
         <h2>Posts</h2>
         <PostForm onPostSubmit={this.handlePostSubmit} />
         <hr />
         <Posts data={ this.props.collection.toJSON() } />
       </div>`
      )

window.PostModel = Backbone.Model.extend({})

window.AllPostsCollection = Backbone.Collection.extend
  model: PostModel
  url: '/posts'


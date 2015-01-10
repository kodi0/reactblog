# User account requires
# User info component
# User post form component
# User posts compenent

UserAccount = React.createClass
  componentDidMount: ->
    this.props.userPostsCollection.fetch()
      .error (xhr, status, err)=>
        console.error(this.props.url, status, err.toString())

  handlePostSubmit: (post)->
    this.props.userPostsCollection.create(post)
      .error (xhr, status, err)=>
        console.error('/posts.json', status, err.toString())
  
  render: ->
    return (
      `<div>
        <PostForm onPostSubmit={this.handlePostSubmit} />
        <hr />
        <Posts data={this.props.userPostsCollection} />
      </div>`
      )


window.Account = Account
Posts = React.createClass
  render: ->
    PostNodes = this.props.data.map (post)->
      return (
        `<li key={post.key}>
          <Post  title={post.title} body={post.body} />
        </li>`
        )
    return (
      `<div>
        <ul>
        {PostNodes}
        </ul>
      </div>`
    )  

window.Posts = Posts

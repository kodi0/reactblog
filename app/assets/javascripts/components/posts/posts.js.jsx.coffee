Posts = React.createClass
  render: ->
    PostNodes = this.props.data.map (post)->
      return (
        `<li key={post.key}>
          <Post  data={post} />
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

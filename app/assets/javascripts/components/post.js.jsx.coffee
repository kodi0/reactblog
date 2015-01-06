Post = React.createClass
  propTypes:
    data: React.PropTypes.object

  render: ->
    return (
      `<div>
        <div>Title: { this.props.data.title }</div>
        <div>Body: { this.props.data.body }</div>
        <div>Created: { this.props.data.created_at }</div>
        <br />
      </div>`
    )

window.Post = Post

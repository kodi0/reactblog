Post = React.createClass
  propTypes: 
    title: React.PropTypes.string
    body: React.PropTypes.string
    created_at: React.PropTypes.string

  render: ->
    return (
      `<div>
        <div>Title: {this.props.data.title}</div>
        <div>Body: {this.props.data.body}</div>
        <div>Created: {this.props.data.created_at}</div>
        <br />
      </div>`
    )

window.Post = Post
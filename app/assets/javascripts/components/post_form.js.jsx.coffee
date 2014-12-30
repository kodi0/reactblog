PostForm = React.createClass
  propTypes: 
    title: React.PropTypes.string
    body: React.PropTypes.string
  
  hadleSubmit: (e)->
    e.preventDefault()
    # get data from form
    title = this.refs.title.getDOMNode().value.trim();
    body = this.refs.body.getDOMNode().value.trim();
    # call onPostSubmit in parent PostBox and pass post object, 
    # i guess this.props is global object, so we just define there property onPostSubmit, which is a function
    this.props.onPostSubmit({title: title, body: body});
    # clear form
    this.refs.title.getDOMNode().value = '';
    this.refs.body.getDOMNode().value = '';

  render: ->
    return (
      `<div>
        <form className="postForm" onSubmit={this.hadleSubmit}>
          <h3>Submit new post</h3>
          <input type="text" className="form-control" placeholder="Title" ref="title" />
          <br />
          <textarea className="form-control" placeholder="Subject" ref="body" ></textarea>
          <br />
          <input className="btn" type="submit" value="Post" />
        </form>
      </div>`
      )

window.PostForm = PostForm
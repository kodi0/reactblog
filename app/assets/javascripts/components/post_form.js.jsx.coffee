PostForm = React.createClass
  propTypes: 
    title: React.PropTypes.string
    body: React.PropTypes.string
  
  hadleSubmit: (e)->
    e.preventDefault()
    # get data from form
    title = $('#title').val()
    body = $('#body').val()
    # call onPostSubmit in parent PostBox and pass post object
    # this is mechanism with which we can transfer data from child to parent
    this.props.onPostSubmit({title: title, body: body});
    # clear form
    title = $('#title').val('')
    body = $('#body').val('')

  render: ->
    return (
      `<div>
        <form className="postForm" onSubmit={this.hadleSubmit}>
          <h3>Submit new post</h3>
          <input type="text" className="form-control" placeholder="Title" ref="title" id="title" />
          <br />
          <textarea className="form-control" placeholder="Subject" ref="body" id="body"></textarea>
          <br />
          <input className="btn" type="submit" value="Post" />
        </form>
      </div>`
      )

window.PostForm = PostForm
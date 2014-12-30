PostBox = React.createClass
  loadCommentsFromServer: ->
    $.ajax
      url: this.props.url
      dataType: 'json'
      success:  (data)=>
        this.setState
          data: data
      error: (xhr, status, err)=>
        console.error(this.props.url, status, err.toString())

  getInitialState: ->
    data: []

  componentDidMount: ->
    this.loadCommentsFromServer()

  render: ->
    return (
       `<div className="postBox">
         <h2>Posts</h2>
         <PostForm />
         <hr />
         <Posts data={this.state.data} />
       </div>`
      )

React.render `<PostBox url="/posts.json" />`, document.getElementById('post_box')

window.PostBox = PostBox

PostBox = React.createClass
  loadPostsFromServer: ->
    $.ajax
      url: this.props.url
      dataType: 'json'
      success:  (data)=>
        this.setState
          data: data
      error: (xhr, status, err)=>
        console.error(this.props.url, status, err.toString())
  
  handlePostSubmit: (post)->
    $.ajax
      url: '/posts.json'
      dataType: 'json'
      type: 'POST'
      data: {post: post}
      success:  (data)=>
        console.log(data)
        this.setState
          data: data
      error: (xhr, status, err)=>
        console.error('/posts.json', status, err.toString())

  getInitialState: ->
    data: []
  
  componentDidMount: ->
    this.loadPostsFromServer()
    console.log(this.props)

  render: ->
    return (
       `<div className="postBox">
         <h2>Posts</h2>
         <PostForm onPostSubmit={this.handlePostSubmit} />
         <hr />
         <Posts data={this.state.data} />
       </div>`
      )

React.render `<PostBox url="/posts.json" />`, document.getElementById('post_box')

window.PostBox = PostBox

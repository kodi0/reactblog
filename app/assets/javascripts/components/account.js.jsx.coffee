Account = React.createClass
  loadPostsFromServer: ->
    this.props.myposts.fetch()
      .success( (data)=>
        this.setState
          data: data
      )    
      .error (xhr, status, err)=>
        console.error(this.props.url, status, err.toString())
  getInitialState: ->
    data: []
  
  componentDidMount: ->
    this.loadPostsFromServer()
  
  handlePostSubmit: (post)->
    this.props.post.save(post,{url:'/posts.json'})
      .success((data)=>
        console.log(data)
        this.setState
          data: data
      )    
      .error (xhr, status, err)=>
        console.error('/posts.json', status, err.toString())

  render: ->
    return (
      `<div>
        <PostForm onPostSubmit={this.handlePostSubmit} />
        <hr />
        <Posts data={this.state.data} />
      </div>`
      )

window.Account = Account
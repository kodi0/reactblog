PostBox = React.createClass
  loadPostsFromServer: ->
    this.props.collection.fetch()
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
  
  renderAccount: ->
    $('#account-box').slideToggle()

  render: ->
    return (
       `<div className="postBox">
        <Account myposts={myPostsCollection} post={post} />        
         <h2>Posts</h2>
         <a onClick={this.renderAccount} className="open-account" >Account</a>
         <hr />
         <Posts data={this.state.data} />
       </div>`
      )

postsCollection = new Reactapp.Collections.PostsCollection()
post  = new Reactapp.Models.Post()
myPostsCollection = new Reactapp.Collections.UserPostsCollection()


React.render `<PostBox collection={postsCollection} />`, document.getElementById('post_box')

window.PostBox = PostBox

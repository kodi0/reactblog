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
  
  accountHandle: ->

  render: ->
    return (
       `<div className="postBox">
         <h2>Posts</h2>
         <a href="#account" >Account</a>
         <hr />
         <Posts data={this.state.data} />
       </div>`
      )

postsCollection = new Reactapp.Collections.PostsCollection()
post  = new Reactapp.Models.Post()
myPostsCollection = new Reactapp.Collections.UserPostsCollection()

Router = Backbone.Router.extend
  routes : 
    "account" : "myAccount"  
  myAccount : ->
    React.render  `<Account myposts={myPostsCollection} post={post} />,
      document.body`
    
new Router()
Backbone.history.start()  


React.render `<PostBox collection={postsCollection} />`, document.getElementById('post_box')

window.PostBox = PostBox

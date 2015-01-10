# MainPage requires 
# Posts component
# 
MainPage = React.createClass
  componentDidMount: ->
    this.props.collection.fetch()
      .error (xhr, status, err)=>
        console.error(this.props.url, status, err.toString())
  
  render: ->
    return (
       `<div>
         <h2>Posts</h2>
         <hr />
         <Posts data={this.props.collection} />
       </div>`
      )

mainPagePostsCollection = new Reactapp.Collections.MainPagePostsCollection()
userPostsCollection = new Reactapp.Collections.UserPostsCollection()
post  = new Reactapp.Models.Post()

window.MainPage = MainPage

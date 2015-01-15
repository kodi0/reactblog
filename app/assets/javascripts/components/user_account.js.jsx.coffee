# User account requires
# User info component
# User post form component
# User posts compenent

UserAccount = React.createClass

  getInitialState:->
    data: []

  componentDidMount: ->
    req = $.ajax
      url:'/posts?q=user'
      dataType: 'json'
    
    req.done (data)=>
      this.setState
        data: data

  handlePostSubmit: (post)->
    req = $.ajax
      type: 'POST'
      url : '/posts'
      dataType: 'json'
      data: 
        post:post

    req.done (data)=>
      this.setState
        data: data
    req.fail (error)->
       console.log(error)    
 
  componentWillUnmount: ->
    console.log('unmounted')

  render: ->
    return (
      `<div>
        <PostForm onPostSubmit={this.handlePostSubmit} />
        <hr />
        <Posts data={this.state.data} />
      </div>`
      )


window.UserAccount = UserAccount
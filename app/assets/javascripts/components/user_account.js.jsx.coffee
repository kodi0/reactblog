# User account requires
# User info component
# User post form component
# User posts compenent

UserAccount = React.createClass

  getInitialState:->
    data: []

  componentDidMount: ->
    $.ajax(
      url:'/posts?q=user'
      dataType: 'json')
    .done (data)=>
      this.setState
        data: data

  handlePostSubmit: (post)->
    $.ajax(
      type: 'POST'
      url : '/posts'
      dataType: 'json'
      data: {post:post})
    .done (data)=>
      this.setState
        data: data

  render: ->
    return (
      `<div>
        <PostForm onPostSubmit={this.handlePostSubmit} />
        <hr />
        <Posts data={this.state.data} />
      </div>`
      )


window.UserAccount = UserAccount
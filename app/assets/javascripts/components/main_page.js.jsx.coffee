# MainPage requires 
# Posts component
# 
MainPage = React.createClass
  getInitialState: ->
    data: []
  componentDidMount: ->
    $.ajax(
      url:'/posts'
      dataType: 'json')
    .done (data)=>
      this.setState
        data: data

  render: ->
    return (
       `<div>
         <h2>Posts</h2>
         <hr />
         <Posts data={this.state.data} />
       </div>`
      )

window.MainPage = MainPage

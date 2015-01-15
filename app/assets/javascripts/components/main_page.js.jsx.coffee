# MainPage requires 
# Posts component
# 
MainPage = React.createClass
  getInitialState: ->
    data: []
  componentDidMount: ->
    req = $.ajax
      url:'/posts'
      dataType: 'json'
    
    req.done (data)=>
      this.setState
        data: data
    
    req.fail (error)->
      console.log(error)    

  render: ->
    return (
       `<div>
         <h2>Posts</h2>
         <hr />
         <Posts data={this.state.data} />
       </div>`
      )

window.MainPage = MainPage

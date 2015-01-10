# MainPage requires 
# Posts component
# 
MainPage = React.createClass
  mixins: [BackboneMixin]
  
  getBackboneCollections: ->
    [this.props.posts]
  
  componentDidMount: ->
    @props.posts.fetch()

  render: ->
    return (
       `<div>
         <h2>Posts</h2>
         <hr />
         <Posts data={this.props.posts} />
       </div>`
      )

window.MainPage = MainPage

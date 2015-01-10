BackboneMixin =
  componentDidMount: ->
    @getBackboneCollections().forEach ((collection) ->
      collection.on "add remove change", @forceUpdate.bind(this, null)
      return
    ), this
    return

  componentWillUnmount: ->
    @getBackboneCollections().forEach ((collection) ->
      collection.off null, null, this
      return
    ), this
    return

window.BackboneMixin = BackboneMixin
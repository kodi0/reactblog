var Posts = React.createClass({
  
  render: function() {
    return (
      <div>
        <Post title={this.props.title} body={this.props.body} />
      </div>
    );
  }
});
var PostBox = React.createClass({
  loadCommentsFromServer: function() {
      $.ajax({
        url: this.props.url,
        dataType: 'json',
        success: function(data) {
          this.setState({data: data});
        }.bind(this),
        error: function(xhr, status, err) {
          console.error(this.props.url, status, err.toString());
        }.bind(this)
      });
    },
  getInitialState: function() {
        return {data: []};
      },
  componentDidMount: function() {
      this.loadCommentsFromServer();
    },    
  render: function() {
    return (
      <div className="postBox">
        <h2>Posts</h2>
        <PostForm />
        <hr />
        <Posts data={this.state.data} />
      </div>
    );
  }
});
React.render(
  <PostBox url="/posts.json" />,
  document.getElementById('post_box'));
var PostBox = React.createClass({
  render: function() {
    console.log(this.props.posts);
    return (
      <div className="postBox">
        <h2>Posts</h2>
        <PostForm />
        <hr />
        <Posts data={this.props.posts} />
      </div>
    );
  }
});
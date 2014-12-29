var PostBox = React.createClass({
  render: function() {
    return (
      <div className="commentBox">
        <h2>Posts</h2>
        <PostForm />
        <Posts title="Be or not to be" body="Body" />
      </div>
    );
  }
});
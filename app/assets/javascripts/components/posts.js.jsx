var Posts = React.createClass({
  render: function() {
    var PostNodes = this.props.data.map(function (post) {
      return (
          <li key={post.key}>
            <Post  title={post.title} body={post.body} />
          </li>
      );
    });
    return (
      <div>
        <ul>
        {PostNodes}
        </ul>
      </div>
    );
  }
});
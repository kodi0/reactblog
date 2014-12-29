var Posts = React.createClass({
  render: function() {
    console.log(this.props.data);
    var PostNodes = this.props.data.map(function (post) {
      return (
        <div>
          <ol>
          <li key={post.key}>
            <Post  title={post.title} body={post.body} />
          </li>
          </ol>
        </div>
      );
    });
    return (
      <div>
        {PostNodes}
      </div>
    );
  }
});
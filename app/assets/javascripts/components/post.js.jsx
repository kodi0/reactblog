var Post = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    body: React.PropTypes.string,
    published_at: React.PropTypes.string,
    publishedBy: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Title: {this.props.title}</div>
        <div>Body: {this.props.body}</div>
        <div>Published: {this.props.published_at}</div>
        <div>Published By: {this.props.published_by}</div>
      </div>
    );
  }
});

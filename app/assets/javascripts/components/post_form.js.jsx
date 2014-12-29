var PostForm = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    body: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div className="commentForm">
          <h3>Submit new post</h3>
          <input type="text" className="form-control" placeholder="Title" ref="title" />
          <br />
          <textarea className="form-control" placeholder="Subject" ref="body" ></textarea>
        </div>
      </div>
    );
  }
});

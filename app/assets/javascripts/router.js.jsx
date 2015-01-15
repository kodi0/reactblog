var Router = ReactRouter;
var Route = ReactRouter.Route;

var routes = (
  <Route handler={MainPage} path="/">
    <Route name="user" path="account" handler={UserAccount} />
  </Route>
);

Router.run(routes, function (Handler) {
  React.render(<Handler/>, document.getElementById('react-container'));
});

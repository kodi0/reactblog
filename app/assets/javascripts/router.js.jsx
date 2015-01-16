var Router = ReactRouter;
var Route = ReactRouter.Route;
var DefaultRoute = Router.DefaultRoute;

var routes = (
  <Route handler={App} path="/">
    <DefaultRoute handler={MainPage}/>
    <Route name="account" path="account" handler={UserAccount} />
  </Route>
);

Router.run(routes, function (Handler) {
  React.render(<Handler/>, document.getElementById('react-container'));
});

This is an example [node.js](http://nodejs.org/) project, written in
[CoffeeScript](http://coffeescript.org/) and using:

* [Express](http://expressjs.com/)
* [Socket.IO](http://socket.io/)
* [AngularJS](http://angularjs.org/)
* [Bootstrap](http://getbootstrap.com/)
* [UI Bootstrap](http://angular-ui.github.io/bootstrap/) (from angular-ui)

You need both CoffeeScript and express:

	npm install -g coffee-script npm install -g express

Then you can install the dependency node modules:

	npm install .

Build the source CoffeeScript files:

	cake build

And then start the server.

	coffee app.coffee

I've focused on making this as minimal as possible, while still demonstrating
the full stack.

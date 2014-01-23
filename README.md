Express Example
===============

This is an example [node.js](http://nodejs.org/) project, written in
[CoffeeScript](http://coffeescript.org/) and using:

* [Express](http://expressjs.com/)
* [Socket.IO](http://socket.io/)
* [AngularJS](http://angularjs.org/)
* [Bootstrap](http://getbootstrap.com/)
* [UI Bootstrap](http://angular-ui.github.io/bootstrap/) (from angular-ui)
* [Jade](http://jade-lang.com/)

You need both CoffeeScript and express:

	npm install -g coffee-script npm install -g express

Then you can install the dependency node modules:

	npm install .

Build the source CoffeeScript files:

	cake build

And then start the server.

	coffee app.coffee

Every five seconds, the server uses Socket.IO to push the current time to the
client. The client, on receiving the time, adds it to the page in the form of a
new Bootstrap Alert widget.

Jade is a good choice for the template engine, because its syntax doesn't get in
the way of Angular's.

I've focused on making this as minimal as possible, while still demonstrating
the full stack.

express = require "express"
http = require "http"
path = require "path"
socket_io = require "socket.io"

app = express()
app.set "view engine", "jade"
app.use express.static (path.join __dirname, 'static')

app.get "/", (req, res) ->
    res.render 'index', title: 'Express'
    return

server = http.createServer app
io = socket_io.listen server


io.sockets.on "connection", (socket) ->
    socket.emit "message", "Welcome to the page"

    sendDate = ->
        socket.emit "message", new Date().toTimeString()

    setInterval sendDate, 5000

server.listen 3000

console.log "Express server listening on port 3000"

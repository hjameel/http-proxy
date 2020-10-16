const http = require('http')

const server = http.createServer((req, res) => {
  res.statusCode = 200
  res.end('Welcome to nginx!')
})

server.listen(80, () => {
})

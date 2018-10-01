var express = require('express')
var app = express()

app.set('port', (process.env.Fabric_Endpoint_nodeSampleEndpoint || 5001))
app.use(express.static(__dirname + '/public'))

app.get('/', function(request, response) {
  response.send('Olá ' + process.env.JENKINS_NAME_TESTE + ' !')
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})

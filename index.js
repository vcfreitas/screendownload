var http = require('http');
var express = require('express');
var app = (function(){
    var app = express();

    //Configuração de Ambiante
    app.set('port', 8080);

    // Middleware
    app.use(express.static('www'));


    return app;
})();

http.createServer(app).listen(app.get('port'), function(){
    console.log('Express Server escutando na porta ' + app.get('port'));
});

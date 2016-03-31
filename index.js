var http = require('http');
var express = require('express');
var app = (function(){
    var app = express();

    //Configuração de Ambiante
    app.set('port', 8085);

    // Middleware
    app.use(express.static('public'));


    return app;
})();

http.createServer(app).listen(app.get('port'), function(){
    console.log('Express Server escutando na porta ' + app.get('port'));
});

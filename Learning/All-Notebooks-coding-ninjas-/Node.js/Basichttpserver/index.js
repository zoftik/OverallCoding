const http = require('http');
const port = 8000;
const fs = require('fs');


function requestHandler(request, response) {
    console.log(request.url);
    response.writeHead(200, { 'content-type': 'text/html' });
    let filepath;
    switch(request.url){
        case '/':
            filepath:'./index.html'
            break;
        case '/profile':
            filepath:'.profile.html'
            break;
        default:
            filepath:'./404.html'
    }

    // fs.filepath(filepath,function(err,data){
    //     if(err){
    //         console.log('error', err);
    //         return response.end('<h1>Error!</h1>')

    //     }
    //     return response.end(data);

    // })



    // fs.readFile()
    // fs.readFile('./file.txt', (err, data)=>{
    //     if(err) {
    //         console.log("Inside gets printed.");
    //     }
    //     console.log("Outside gets printed.");
    //     });

    // fs.readFile('./index.html', function(err, data){
    //     if(err){
    //         console.log('error',err);
    //         return response.end('<h1> Error!</h1>');
    //     }
    //     return response.end(data);
    //     });

    // // response.end('<h1>Gotcha!</h1>');
}

const server = http.createServer(requestHandler);
server.listen(port, function (err) {
    if (err) {
        console.log(err)
        return;
    }
    console.log("server is up and running on port: ", port);
})
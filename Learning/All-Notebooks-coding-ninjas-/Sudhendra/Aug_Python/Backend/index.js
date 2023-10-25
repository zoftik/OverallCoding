const http = require('http')
const fs = require('fs')
const PORT = 8000

const server = http.createServer((req, res) => {

    console.log(req.url)

    if ( req.url === '/home' ) {

        const data = fs.readFileSync('index.html')
        res.writeHead(200, {
            'Content-Type' : 'text/html',
        })
        return res.end(data)

    } else if( req.url === '/about' ) {

        return res.end(JSON.stringify({ message: "a js object" }))
    }

    return res.end('<h1>Page not found</h1>')
})


server.listen(PORT, () => {
    console.log("Server running successfully!")
})

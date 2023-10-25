const express = require('express')
const path = require('path')
const app = express()
const PORT = 8000

let counter = 0;
const requestCounter = (req, res, next) => { 
    counter++;
    console.log("The total requests are: ", counter)
    next()
}

app.use(requestCounter)
app.use(express.urlencoded())


const student = [
    {
        name: 'abc',
        roll: 40
    },
    {
        name: 'abcd',
        roll: 41
    },
    {
        name: 'abcde',
        roll: 42
    }
]

app.post('/student', (req, res) => {

    student.push(req.body)
    return res.status(200).json({
        message: "Student added successfully!",
        student: student
    })

})

app.get('/student', (req, res) => {

    return res.status(200).json({
        message: "Student fetched successfully!",
        student: student
    })

})

app.put('/student', (req, res) => {

    console.log(req.query.roll)
    const roll = parseInt(req.query.roll)
    const index = student.findIndex(student => student.roll === roll)
    student.splice(index, 1, req.body)

    return res.status(200).json({
        message: "Student fetched successfully!",
        student: student
    })

})











app.get('/home', (req, res) => {
    return res.end('<h1>The home page</h1>')
})

app.get('/about', (req, res) => {
    return res.end('<h1>The about page</h1>')
})

app.get('/login', (req, res) => {
    return res.sendFile(path.join(__dirname, 'index.html'))
})

app.post('/login', (req, res) => {

    console.log(req.body)

    return res.end('The data is received')

})

app.delete('/data', (req, res) => {



})


app.listen(PORT, () => {
    console.log("Express is running!")
})
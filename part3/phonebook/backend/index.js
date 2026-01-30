require('dotenv').config()
const express = require('express')
const app = express()
// const cors = require('cors')
const morgan = require('morgan')
const PORT = process.env.PORT  || 3001 // removed for 3.14
const Person = require('./models/person.js')
// console.log('env port is', process.env.PORT)

app.use(express.static('build'))
// const PORT = 3001
// const baseURL = "http://localhost:3001" - Not needed for backend
// Express uses path-matching library that expects patterns without the http:

app.use(express.static('dist'))
// app.use(cors())
app.use(express.json()) //json-parser middleware
// express.json must run before morgan so that req.body exists

morgan.token('postData', function (req) {
  if (req.method === 'POST') {
    return JSON.stringify(req.body) //logs body only
  }
  return ''
})

app.use(
    morgan(':method :url :status :res[content-length] - :response-time ms :postData')
) 

// removed for Exercise 3.13+
// let phonebook = [
//     { 
//       "id": "1",
//       "name": "Arto Hellas", 
//       "number": "040-123456"
//     },
//     { 
//       "id": "2",
//       "name": "Ada Lovelace", 
//       "number": "39-44-5323523"
//     },
//     { 
//       "id": "3",
//       "name": "Dan Abramov", 
//       "number": "12-43-234345"
//     },
//     { 
//       "id": "4",
//       "name": "Mary Poppendieck", 
//       "number": "39-23-6423122"
//     }
// ]

// app.get('/', function (request, response) {
//   response.send('Phonebook backend is running on Render!')
// }) // added for Exercise 3.10 for Render deployment check


app.get('/health', (request, response) => {
  response.send('OK')
}) // added for Exercise 3.11 - stop override of frontend homepage

app.get('/api/persons', (request, response) => {
    Person
        .find({})
        .then(function(people){
            return response.json(people)
        })
})

// app.get('/api/persons', (request, response) => {
//   response.json(phonebook)
// }) // removed for Exercise 3.13 - connect to MongoDB Atlas instead

// app.get('/info', (request, response) => {
//     const date = Date()
//     response.send(`<p>Phonebook has info for ${phonebook.length} people</p><p>${date}</p>`) 
// }) 

app.get('/api/persons/:id', (request, response, next) => {
    Person.findById(request.params.id) 
        .then(function(entry){
            if (entry) {
                response.json(entry)
            }
            else {
                response.status(404).end()
            } // if id is valid MongoDB objectId but not found
        })
        .catch(function(error){
            next(error)
        })
})

// Exercise 3.15:
// app.delete('/api/persons/:id', (request, response) => {
//     Person.findByIdAndDelete(request.params.id)
//         .then(function(entry){
//             if (entry) {
//                 response.status(204).end()
//             }
//             else {
//                 response.status(404).end()
//             } // if id is valid MongoDB objectId but not found
//         })
//         .catch(function(error){
//             console.log(error)
//             response.status(400).send({ error: 'malformatted id' }) // this matches better than 500
//         })
//     // phonebook = phonebook.filter(function(entry){
//     //     return entry.id !== id
//     // })
//     // response.status(204).end()
// })

app.delete('/api/persons/:id', (request, response, next) => {
    Person.findByIdAndDelete(request.params.id)
        .then(function(person){
            if (person) {
                response.status(204).end()
            }
            else {
                response.status(404).end()
            } // if id is valid MongoDB objectId but not found
        })
        .catch(function(error){
            next(error)
        })
    // phonebook = phonebook.filter(function(entry){
    //     return entry.id !== id
    // })
    // response.status(204).end()
})

// app.get('/api/persons/:id', (request, response) => {
//     const id = request.params.id 
//     const entry = phonebook.find(function(entry){
//         return entry.id === id
//     })

//     if (entry) {
//         response.json(entry)
//     } else {
//         response.status(404).end()
//     }
// })

// app.delete('/api/persons/:id', (request, response) => {
//     const id = request.params.id
//     phonebook = phonebook.filter(function(entry){
//         return entry.id !== id
//     })
//     response.status(204).end()
// })

// remove for Exercise 3.14
// function generateUniqueId(phonebook) {
//     let id

//     do {
//         // pick a big range so collisions are unlikely
//         id = String(Math.floor(Math.random() * 1000000000) + 1)
//     } while (phonebook.find(function (p) { return p.id === id }))

//     return id
//     }

app.post('/api/persons', (request, response) => {
    const entry = request.body // Client supplied and untrusted
    // console.log('request body', entry)
    if (!entry.name || !entry.number) {
        return response.status(400).json({ 
            error: 'name or number is missing' 
        })
    }

    const person = new Person({
        name: entry.name,
        number: entry.number
    })

    person.save()
        .then(function(savedPerson){
            response.status(201).json(savedPerson)
        })

// remove for Exercise 3.14
    // const nameExists = phonebook.find(function(p){
    //     return p.name === entry.name
    // })

    // if (nameExists) {
    //     return response.status(400).json({ 
    //         error: 'name already exists in phonebook' 
    //     })
    // }   

    // const newEntry = {
    //     name: entry.name,
    //     number: entry.number,
    //     id: generateUniqueId(phonebook)
    // }
    // phonebook = phonebook.concat(newEntry)
    // response.status(201).json(newEntry)
})

app.put('/api/persons/:id', (request, response, next) => {
    const updated = request.body

    const updatedFields = {
        name: updated.name,
        number: updated.number,
    }

    Person.findByIdAndUpdate(
        request.params.id,
        updatedFields,
            { new: true }  // return the updated doc
    )
        .then(updatedPerson => {
            if (updatedPerson) {
                response.json(updatedPerson)
            } else {
                response.status(404).end()
            }
        })
        .catch(error => next(error))
})


// this has to be the last loaded middleware
//  also all the routes should be registered before this!

const errorHandler = (error, request, response, next) => {
    console.error(error.message)
    
    if (error.name === 'CastError') {
        return response.status(400).send({ error: 'malformatted id' })
    } 
    if (error.name === 'ValidationError') {
        return response.status(400).json({ error: error.message })
    } // not very useful bc schema has no validation yet

    next(error)
}

app.use(errorHandler)

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})
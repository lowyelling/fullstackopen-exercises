const express = require('express')
const app = express()
// const cors = require('cors')
const morgan = require('morgan')
const PORT = process.env.PORT || 3001
const Person = require('./models/person.js')

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

app.get('/info', (request, response) => {
    const date = Date()
    response.send(`<p>Phonebook has info for ${phonebook.length} people</p><p>${date}</p>`) 
})

app.get('/api/persons/:id', (request, response) => {
    const id = request.params.id 
    const entry = phonebook.find(function(entry){
        return entry.id === id
    })

    if (entry) {
        response.json(entry)
    } else {
        response.status(404).end()
    }
})

app.delete('/api/persons/:id', (request, response) => {
    const id = request.params.id
    phonebook = phonebook.filter(function(entry){
        return entry.id !== id
    })
    response.status(204).end()
})

function generateUniqueId(phonebook) {
    let id

    do {
        // pick a big range so collisions are unlikely
        id = String(Math.floor(Math.random() * 1000000000) + 1)
    } while (phonebook.find(function (p) { return p.id === id }))

    return id
    }

app.post('/api/persons', (request, response) => {
    const entry = request.body // Client supplied and untrusted
    // console.log('request body', entry)
    if (!entry.name || !entry.number) {
        return response.status(400).json({ 
            error: 'name or number is missing' 
        })
    }

    const nameExists = phonebook.find(function(p){
        return p.name === entry.name
    })

    if (nameExists) {
        return response.status(400).json({ 
            error: 'name already exists in phonebook' 
        })
    }   

    const newEntry = {
        name: entry.name,
        number: entry.number,
        id: generateUniqueId(phonebook)
    }
    phonebook = phonebook.concat(newEntry)
    response.status(201).json(newEntry)
})

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})
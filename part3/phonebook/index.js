const express = require('express')
const app = express()
const cors = require('cors')
const PORT = 3001
// const baseURL = "http://localhost:3001" - Not needed for backend
// Express uses path-matching library that expects patterns without the http:

app.use(cors())
app.use(express.json()) //json-parser middleware

let phonebook = [
    { 
      "id": "1",
      "name": "Arto Hellas", 
      "number": "040-123456"
    },
    { 
      "id": "2",
      "name": "Ada Lovelace", 
      "number": "39-44-5323523"
    },
    { 
      "id": "3",
      "name": "Dan Abramov", 
      "number": "12-43-234345"
    },
    { 
      "id": "4",
      "name": "Mary Poppendieck", 
      "number": "39-23-6423122"
    }
]

app.get('/api/persons', (request, response) => {
  response.json(phonebook)
})

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
    entries = phonebook.filter(function(entry){
        return entry.id !== id
    })
    response.status(204).end()
})

app.post('/api/persons', (request, response) => {
    function generateUniqueId(phonebook) {
        let id

        do {
            // pick a big range so collisions are unlikely
            id = String(Math.floor(Math.random() * 1000000000) + 1)
        } while (phonebook.find(function (p) { return p.id === id }))

        return id
        }

    const entry = request.body 
    const newEntry = {
        ...entry,
        id: generateUniqueId(phonebook)
    }
    phonebook = phonebook.concat(newEntry)
    response.json(newEntry)
})

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`)
})
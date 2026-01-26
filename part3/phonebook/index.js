const express = require('express')
const app = express()
const cors = require('cors')
const PORT = 3001
// const baseURL = "http://localhost:3001" - Not needed for backend
// Express uses path-matching library that expects patterns without the http:

app.use(cors())
app.use(express.json())

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

app.get('/api/persons', (req, res) => {
  res.json(phonebook)
})

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
})
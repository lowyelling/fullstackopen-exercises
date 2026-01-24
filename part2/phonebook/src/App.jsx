import { useState } from 'react'

const App = () => {
  const [persons, setPersons] = useState(
    [
    { name: 'Arto Hellas', number: '040-123456', id: 1 },
    { name: 'Ada Lovelace', number: '39-44-5323523', id: 2 },
    { name: 'Dan Abramov', number: '12-43-234345', id: 3 },
    { name: 'Mary Poppendieck', number: '39-23-6423122', id: 4 }
  ])

  const [newName, setNewName] = useState('')
  const [newNumber, setNewNumber] = useState('')
  const [filter, setFilter] = useState('')

  const handleFilterChange = function(event){
    setFilter(event.target.value)
  }

  const personsToShow = persons.filter(function(person){
    return person.name.toLowerCase().includes(filter.toLowerCase())
  })

  const handleAddName = function(event){
    event.preventDefault()

    const nameExists = persons.some(
      function(person){
          return person.name === newName
      }
    )

    if (nameExists === true) {
      alert(`${newName} is already added to the phonebook`)
      return
    }

    const nameObject = {
      name: newName,
      number: newNumber
    }
    
    setPersons(persons.concat(nameObject))
    setNewName('')
    setNewNumber('')
  }

  const handleNameChange = function(event){
    setNewName(event.target.value)
  }

  const handleNumberChange = function(event){
    setNewNumber(event.target.value)
  }

  return (
    <div>
      <h2>Phonebook</h2>
      <div>filter shown with <input value={filter} onChange={handleFilterChange}/> </div>
      <form onSubmit={handleAddName}>
        <div>
          name: <input value={newName} onChange={handleNameChange}/>
        </div>
        <div>
          number: <input value={newNumber} onChange={handleNumberChange}/>
        </div>
        <div><button type="submit">add</button></div>
        <br />        
         <div>debugName: {newName}</div>
         <div>debugNumber: {newNumber}</div>
         <div>debugFilter: {filter}</div>
      </form>
      <h2>Numbers</h2>
      {personsToShow.map(function(person){
          return (<div key={person.name}>{person.name} {person.number}</div>)
      })}
    </div>
  )
}

export default App
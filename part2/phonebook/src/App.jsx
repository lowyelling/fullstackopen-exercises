import { useState, useEffect } from 'react'
import Filter from '../components/Filter'
import PersonForm from '../components/PersonForm'
import Persons from '../components/Persons'
import axios from 'axios'
import personsService from '../services/persons'

const App = function () {
  const [persons, setPersons] = useState([])
  const [newName, setNewName] = useState('')
  const [newNumber, setNewNumber] = useState('')
  const [filter, setFilter] = useState('')

  useEffect(function(){
    personsService
      .getAll()
      .then(function(response){
        setPersons(response.data)
      })
  }, [])

  const handleFilterChange = function (event) {
    setFilter(event.target.value)
  }

  const personsToShow = persons.filter(function (person) {
    return person.name.toLowerCase().includes(filter.toLowerCase())
  })

  const handleAddName = function (event) {
    event.preventDefault()
    const nameExists = persons.some(function (person) {
      return person.name === newName
    })

    if (nameExists === true) {
      alert(`${newName} is already added to the phonebook`)
      return
    }

    const nameObject = {
      name: newName,
      number: newNumber,
      //id: persons.length + 1
      id: (persons.length + 1).toString()
    }

    personsService
      .create(nameObject)
      .then(function(response){
        setPersons(persons.concat(response.data))
        setNewName('')
        setNewNumber('')
      })
  }

  const handleNameChange = function (event) {
    setNewName(event.target.value)
  }

  const handleNumberChange = function (event) {
    setNewNumber(event.target.value)
  }

  const handleDelete = function(id,name){
    const ok = window.confirm(`Delete ${name}?`)
    if (!ok) {
      return
    }

    personsService
      .remove(id)
      .then(function(){
        setPersons(persons.filter(function(person){
          return person.id !== id
        }))
      })
  }

  return (
    <div>
      <h2>Phonebook</h2>

      <Filter 
        filter={filter} 
        handleFilterChange={handleFilterChange} 
      />

      <h3>Add a new</h3>

      <PersonForm
        handleAddName={handleAddName}
        newName={newName}
        handleNameChange={handleNameChange}
        newNumber={newNumber}
        handleNumberChange={handleNumberChange}
        filter={filter}
      />

      <h2>Numbers</h2>

      <Persons 
        personsToShow={personsToShow} 
        handleDelete={handleDelete}
      />
    </div>
  )
}

export default App
import { useState, useEffect } from 'react'
import Filter from '../components/Filter'
import PersonForm from '../components/PersonForm'
import Persons from '../components/Persons'
import axios from 'axios'
import personsService from '../services/persons'
import Notification from '../components/Notification'

const App = function () {
  const [persons, setPersons] = useState([])
  const [newName, setNewName] = useState('')
  const [newNumber, setNewNumber] = useState('')
  const [filter, setFilter] = useState('')
  const [message, setMessage] = useState(null)
  const [messageType, setMessageType] = useState(null)

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
    const nameExists = persons.find(function (person) {
      return person.name === newName
    })
  
    // #1: If name exists -> update number
    if (nameExists) {
      const ok = window.confirm(`${newName} is already added to the phonebook, 
        replace old number with new one?`)
      if (!ok) {
        return
      }

      const updatedPerson = {
        ...nameExists,
        number: newNumber
      }

      personsService
        .update(nameExists.id, updatedPerson)
        .then(function(response){
          setPersons(
            persons.map(function(person){
              return person.id === nameExists.id ? response.data : person
            })
          )
          setMessage(`Updated ${nameExists.name}`)
          setMessageType('success')
          setTimeout(() => {
            setMessage(null)
            setMessageType(null)
          }, 5000)
          setNewName('')
          setNewNumber('')
        })
        .catch(function(error){
          setMessage(`Information of ${updatedPerson.name} has already been removed from server`)
          setMessageType('error')
          setTimeout(() => {
            setMessage(null)
            setMessageType(null)
          }, 5000)
          
          setPersons(
            persons.filter(function(person){
              return person.id !== updatedPerson.id
            }))

        })

        return
    }

  // #2: If name is new -> create new person
    const nameObject = {
      name: newName,
      number: newNumber,
      id: (persons.length + 1).toString()
    }

    personsService
      .create(nameObject)
      .then(function(response){
        setPersons(persons.concat(response.data))
        setMessage(`Added ${nameObject.name}`)
        setMessageType('success')
        setTimeout(() => {
          setMessage(null)
          setMessageType(null)
        }, 5000)
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
      <Notification 
        message={message}
        type={messageType}/>
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
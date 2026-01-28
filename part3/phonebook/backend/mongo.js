const mongoose = require('mongoose')

if (process.argv.length < 3) {
  console.log('Provide password as argument: node mongo.js <password>')
  process.exit(1) //exit with error code
}

const password = process.argv[2]
const url = `mongodb+srv://lily_db_user:${password}@cluster0.fwjxnhg.mongodb.net/phonebook?retryWrites=true&w=majority&appName=Cluster0`

mongoose.set('strictQuery',false)
mongoose.connect(url, { family: 4 })

//schema definition
const personSchema = new mongoose.Schema({
  name: String,
  number: String,
})

// create matching model
const Person = mongoose.model('Person', personSchema)

// create new object based on model
// #1: node mongo.js password  -> list all
if (process.argv.length === 3) {
  Person
  .find({}) //since parameter is empty object, we get all resources in the collection
  .then(persons => {
    console.log('phonebook:')
    persons.forEach(p => {
      console.log(`${p.name} ${p.number}`)
    })
    mongoose.connection.close()
  })
} else {
  // #2: node mongo.js password "Anna" "040-123456"
  const name = process.argv[3]
  const number = process.argv[4]
  if (!name || !number) {
    console.log('Provide name AND number: node mongo.js <password> <name> <number>')
    mongoose.connection.close()
    process.exit(1) //exit with error code
  }
  const person = new Person({ name, number })
  person
    .save()
    .then(entry => {
        console.log(`Added ${entry.name} number ${entry.number} to phonebook`)
        mongoose.connection.close()
  })
}

const mongoose = require('mongoose')

mongoose.set('strictQuery',false)

const url = process.env.MONGODB_URI // do NOT hardcode URI

console.log('connecting to', url)
mongoose.connect(url, { family: 4 })
    .then(result=>{
        console.log('connected to MongoDB')
    })
    .catch(error=>{
        console.log('error connecting to MongoDB', error.message)
    })

//schema definition
const personSchema = new mongoose.Schema({
  name: String,
  number: String,
})

// modify the method of schema to remove __v mongo versioning
personSchema.set('toJSON', {
  transform: (document, returnedObject) => {
    returnedObject.id = returnedObject._id.toString()
    delete returnedObject._id
    delete returnedObject.__v
  }
})

// create matching model and export it
module.exports = mongoose.model('Person', personSchema)

const PersonForm = function (props) {
    // console.log('PersonForm props', props)
    return (
        <form onSubmit={props.handleAddName}>
        <div>
            name:{' '}
            <input value={props.newName} onChange={props.handleNameChange} />
        </div>
        <div>
            number:{' '}
            <input value={props.newNumber} onChange={props.handleNumberChange} />
        </div>
        <div>
            <button type="submit">add</button>
        </div>

        <br />
        <div>debugName: {props.newName}</div>
        <div>debugNumber: {props.newNumber}</div>
        <div>debugFilter: {props.filter}</div>
        </form>
    )
}

export default PersonForm
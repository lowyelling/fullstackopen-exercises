const Persons = function (props) {
    //console.log('Persons props:', props)
    return (
        <>
        {props.personsToShow.map(function (person) {
            return (
                <li key={person.id}>
                    {person.name} {person.number}
                    {'  '}
                    <button onClick={()=>
                        props.handleDelete(person.id, person.name)
                    }>
                        delete
                    </button>
                </li>

                )
            })
        }
        </>
    )
}

export default Persons
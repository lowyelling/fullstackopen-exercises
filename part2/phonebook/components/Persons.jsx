const Persons = function (props) {
    //console.log('Persons props:', props)
    return (
        <>
        {props.personsToShow.map(function (person) {
            return (
                <div key={person.id}>
                    {person.name} {person.number}
                </div>
                )
            })
        }
        </>
    )
}

export default Persons
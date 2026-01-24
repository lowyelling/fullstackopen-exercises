const Filter = function (props) {
    // console.log('Filter props:', props)
    return (
        <div>
            filter shown with{' '}
            <input 
                value={props.filter} 
                onChange={props.handleFilterChange} 
            />
        </div>
    )
}

export default Filter
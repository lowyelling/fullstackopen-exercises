const Notification = ({ message, type }) => {
  if (message === null ){
    return null
  }

const baseStyle = {
  color: 'green',
  background: 'lightgrey',
  fontSize: '20px',
  borderStyle: 'solid',
  borderRadius: '5px',
  padding: '10px',
  marginBottom: '10px'
}

const colorStyle = type === 'error'
  ? { color: 'red'}
  : { color: 'green'}

const notifStyle = {...baseStyle, ...colorStyle}

return (
  <div style={notifStyle}>
      {message}
  </div>
)
}

export default Notification
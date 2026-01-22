import { useState } from 'react'

const App = () => {
  // save clicks of each button to its own state
  const [good, setGood] = useState(0)
  const [neutral, setNeutral] = useState(0)
  const [bad, setBad] = useState(0)

  function onGoodClick(){
    setGood(function(prev){
      return prev + 1
    })
  }

  function onNeutralClick(){
    setNeutral(function(prev){
      return prev + 1
    })
  }

  function onBadClick(){
    setBad(function(prev){
      return prev + 1
    })
  }

  return (
    <>
      <h2>give feedback</h2>
      <div>
        <button onClick={onGoodClick}>good</button>
        <button onClick={onNeutralClick}>neutral</button>
        <button onClick={onBadClick}>bad</button>
      </div>
      <h2>statistics</h2>
      <div>
        <p>good {good}</p>
        <p>neutral {neutral}</p>
        <p>bad {bad}</p>
      </div>
    </>
   
  )
}

export default App
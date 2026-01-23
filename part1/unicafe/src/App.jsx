import { useState } from 'react'

function StatisticLine(props){
  return (
    <tr>
      <td>{props.text}</td>
      <td>{props.value}</td>
    </tr>
  )
}

function Statistics(props){
  //constant definitions
  const all = props.good+props.neutral+props.bad 
  const average = (props.good*1+props.neutral*0+props.bad*-1)/all
  const positive = (props.good/all)*100 

  return (
    <>
      {all === 0 
        ? <div>No feedback given</div> 
        : <div>
            <table>
              <tbody>
                <StatisticLine text="good" value={props.good} />
                <StatisticLine text="neutral" value={props.neutral} />
                <StatisticLine text="bad" value={props.bad} />
                <StatisticLine text="all" value={all} />
                <StatisticLine text="average" value={average} />
                <StatisticLine text="positive" value={`${positive.toFixed(1)} %`} />
              </tbody>
            </table>
          </div>    
      }
    </>
  )
}


function Button(props){
  return (
    <button onClick={props.onClick}>{props.buttonName}</button>
  )
}

const App = () => {
  // save clicks of each button to its own state
  const [good, setGood] = useState(0)
  const [neutral, setNeutral] = useState(0)
  const [bad, setBad] = useState(0)

  // button event handlers
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
        <Button onClick={onGoodClick} buttonName="good"/>
        <Button onClick={onNeutralClick} buttonName="neutral"/>
        <Button onClick={onBadClick} buttonName="bad"/>
      </div>
      <h2>statistics</h2>
      <Statistics good={good} neutral={neutral} bad={bad}/>
    </>
  )
}

export default App
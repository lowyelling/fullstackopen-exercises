// const Header = (props) => <h1>{props.name}</h1>

const Header = (props) => {
  // console.log('Header props:', props)
  return <h1>{props.name}</h1>
}

const Content = (props) => {
  // console.log('Content props:', props)
  // console.log('slice', props.part[0])
    return (
      <>
    <div>
      <Part part={props.part[0]} />
      <Part part={props.part[1]} />
      <Part part={props.part[2]} />
    </div>
    </>
    )
}

const Part = (props) => (
  <p>
    {props.part.name} {props.part.exercises}
  </p>
)

const Total = (props) => {
  //const first = props.part[0].exercises
  //console.log('Total props:', props.total[0].exercises)

  const total = props.total.reduce(function(sum, part){
    return sum + part.exercises
  }, 0)

  return (
    <h4>Total of {total} exercises</h4>
  )
}

const Course = (props) => {
  //console.log('course:',props.course)
  //console.log(props.course.id)
  //console.log(props.course.parts)
  return (
    <>
      <Header 
        name={props.course.name}
      />
      <Content 
        part={props.course.parts}
      />
      <Total 
        total={props.course.parts}
      />
    </>
  )
}

const App = () => {
  const course = {
    id: 1,
    name: 'Half Stack application development',
    parts: [
      {
        name: 'Fundamentals of React',
        exercises: 10,
        id: 1
      },
      {
        name: 'Using props to pass data',
        exercises: 7,
        id: 2
      },
      {
        name: 'State of a component',
        exercises: 14,
        id: 3
      }
    ]
  }

  return <Course course={course} />
}

export default App
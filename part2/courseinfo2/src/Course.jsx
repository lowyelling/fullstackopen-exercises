const Total = (props) => {
  // console.log('All total props', props)
  // console.log('Total props', props.total)
  const total = props.parts.reduce(function(sum, part){
    return sum + part.exercises
  },0)
  // console.log('total constant', total)

  return (
    <h4>total of {total} exercises</h4>
  )
}

const Part = (props) => {
  //console.log('Part props:', props)
  return (
    <>
      <p>{props.name} {props.exercises}</p>
    </>
  )
}
// console logging CourseContent before mapping it
// const CourseContent = (props) => {
//   console.log('course content props:', props)
//   return (
//     <p>
//       <p>{JSON.stringify(props.parts[0])}</p>
//     </p>
//   )
// }

const CourseContent = (props) => {
  // console.log('course content props:', props)
  return (
    <>
      {props.parts.map(function(part){
          // console.log('map part.id', part.id)
          // console.log('map part.name',part.name)
          // console.log('map part.exercises',part.exercises)
          return (
            <Part 
              key={part.id}
              name={part.name}
              exercises={part.exercises}
            />
          )
        })
      }
    </>
  )
}

const CourseName = (props) => {
  //console.log('Header props:', props)
  return <h2>{props.name}</h2>
}

const Course = (props) => {
  //console.log('course props:', props)
  return (
    <>
      <CourseName
        name={props.name} 
      />
      <CourseContent 
        parts={props.parts}
      />
      <Total 
        parts={props.parts}
      />
    </>
  )
}

const Courses = (props) => {
  //console.log('courses:',props.courses)
  //console.log('first course parts', props.courses[0].parts)
  return (
    <>
      {props.courses.map(function(course){
          // console.log('course.id:',course.id)
          // console.log('course.name:',course.name)
          // console.log('course.parts',course.parts)
          return (
            <Course 
              key={course.id}
              name={course.name}
              parts={course.parts}
            />
          )
        }
      )}
    </>
  )
}

export default Courses
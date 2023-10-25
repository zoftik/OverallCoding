// import React from "react";

// class Student extends React.Component{
//     render() {
//         const {name,marks} = this.props;
//       return (
//         <>
//           <h1>Hello, {name}</h1>
//           <p>You've Scored {marks} %</p>
//         </>
//       )
//     }
// }

function Student(props){
    const {name,marks} = props;
    return(
        <>
           <h1>Hello, {name}</h1>
           <p>You've Scored {marks} %</p>
        </>
    )
}


export default Student;


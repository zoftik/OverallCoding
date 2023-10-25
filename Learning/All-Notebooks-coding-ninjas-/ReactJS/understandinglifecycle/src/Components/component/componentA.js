import React from "react";
// import ComponentB from "./componentB";

class ComponentA extends React.Component {
  constructor() {
    super();
    this.state = {
      name: "Component A",
      data: [],
    };
    console.log("component A constructor");
  }

  static getDerivedStateFromProps() {
    console.log("Component A getDerivedStateFromProps");
    return null;
  }

  componentDidMount() {
    console.log("Component A componentDidMount");
    fetch("https://jsonplaceholder.typicode.com/users")
      .then((response) => response.json())
      .then((data) => this.setState({ data: data }));
  }

  render() {
    console.log("component A Render");
    return (
      <>
        <h1>{this.state.name}</h1>
        <ul>
          {this.state.data.map((d) => {
            return <li>{d.username}</li>;
          })}
        </ul>
      </>
    );
  }
}

export default ComponentA;

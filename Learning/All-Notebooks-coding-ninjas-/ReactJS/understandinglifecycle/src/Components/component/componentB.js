import React from "react";

class ComponentB extends React.Component {
  constructor() {
    super();
    this.state = {
      name: "ComponentB",
    };
    console.log("ComponentB constructor");
  }

  static getDerivedStateFromProps() {
    console.log("ComponentB getDerivedStateFromProps");
    return null;
  }

  componentDidMount() {
    console.log("ComponentB componentDidMount");
  }

  render() {
    console.log("ComponentB Render");
    return <h2>{this.state.name}</h2>;
  }
}

export default ComponentB;

import { Component } from "react";

const feed = ["item 1" , "item 2"]

export default class Feed extends Component {
    constructor (props) {
        super(props);
        this.state = {feed:[]}

    }
    componentDidMount(){
        setTimeout(()=> this.setState({feed}),5000);
    }
    shouldComponentUpdate(_, nextState ){
        return nextState.feed.length >=3 ? true : false;
    
    }

    render(){
        return<h3>{this.state.feed.length}</h3>
    }
}
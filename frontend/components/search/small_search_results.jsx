import React from 'react';
import {hashHistory} from 'react-router';

class SmallSearchResults extends React.Component {
  constructor(props) {
    super(props);

    this.handleClick = this.handleClick.bind(this);
  }

  componentWillMount(){
    document.body.addEventListener("click", this.props.clearSearch);
  }

  componentWillUnmount(){
      document.body.removeEventListener("click", this.props.clearSearch);
  }

  handleClick(id) {
    return e => {
      hashHistory.push(`${id}`);
      this.props.clearSearch();
    };
  }

  render(){
    if (this.props.searchString === '') {
      return null;
    }

    return(
      <div>
        <ul id='small-search'>
          {this.props.results.map(result => (
            <li key={result.id} onClick={this.handleClick(result.id)}>
              <img src={result.image_url}/>
              <span>{result.username}</span>
              </li>
          ))}
        </ul>
      </div>
    );
  }

}

export default SmallSearchResults;

import React from 'react';
import {hashHistory} from 'react-router';


class SmallSearchResults extends React.Component {
  constructor(props) {
    super(props);
  }

  handleClick(id) {
    return e => hashHistory.push(`${id}`);
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
              {result.username}</li>
          ))}
        </ul>
      </div>
    );
  }

}

export default SmallSearchResults;

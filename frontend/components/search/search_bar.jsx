import React from 'react';
import SmallSearchResults from './small_search_results';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      searchString: ''
    };
  }


  update(field){
    return e => {
      this.props.search(e.currentTarget.value);
      this.setState({[field]: e.currentTarget.value});
    };
  }

  render(){
    return (
      <div>
        <form>
          <label>
            Search
            <input type="text"
              value={this.state.searchString}
              onChange={this.update('searchString')}></input>
          </label>
        </form>
        <SmallSearchResults results={this.props.searchResults} string={this.state.searchString}/>
      </div>
    );
  }
}

export default SearchBar;

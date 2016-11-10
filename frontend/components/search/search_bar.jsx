import React from 'react';
import SmallSearchResults from './small_search_results';

class SearchBar extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      searchString: ''
    };

    this.clearSearch = this.clearSearch.bind(this);
  }

  update(field){
    return e => {
      this.props.search(e.currentTarget.value);
      this.setState({[field]: e.currentTarget.value});
    };
  }

  clearSearch(){
    // this.props.clearSearch();
    this.setState({searchString: ''});
  }

  render(){
    return (
      <div id='search-bar'>
        <form>
            <i className="fa fa-search"></i>
            <input type="text"
              className='search-string'
              value={this.state.searchString}
              onChange={this.update('searchString')}></input>
        </form>
        <SmallSearchResults results={this.props.searchResults} string={this.state.searchString} clearSearch={this.clearSearch}/>
      </div>
    );
  }
}

export default SearchBar;

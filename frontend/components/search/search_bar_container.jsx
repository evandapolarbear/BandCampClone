import SearchBar from './search_bar';

import { connect } from 'react-redux';
import { searchArtists, clearSearch } from '../../actions/search_actions';

const mapStateToProps = ({artist}) => ({
    searchResults: artist.searchResults
});

const mapDispatchToProps = dispatch => ({
  search: string => dispatch(searchArtists(string)),
  clearSearch: () => dispatch(clearSearch())
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SearchBar);

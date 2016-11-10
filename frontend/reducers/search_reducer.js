import { CLEAR_SEARCH, RECEIVE_ARTIST, RECEIVE_ARTISTS} from '../actions/search_actions';
import {RECEIVE_SONGS} from '../actions/song_upload_actions';
import merge from 'lodash/merge';

const _nullArtist = Object.freeze({
  artist: {username: ''},
  searchResults: [],
});

const ArtistReducer = (state = _nullArtist, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ARTIST:
      const artist = action.artist;
      return merge({}, state, {artist});
    case RECEIVE_ARTISTS:
      const artistdup = merge({}, state.artist);
      return ({artist: artistdup, searchResults: action.artists});
    case RECEIVE_SONGS:
      const nextState = merge({}, state);
      nextState.searchResults = [];
      return nextState;
    default:
      return state;
  }
};

export default ArtistReducer;

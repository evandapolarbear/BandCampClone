import {RECEIVE_ARTIST} from '../actions/search_actions';
import merge from 'lodash/merge';

const _nullArtist = Object.freeze({
  artist: {username: ''},
  errors: []
});

const ArtistReducer = (state = _nullArtist, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_ARTIST:
      const artist = action.artist;
      return merge({}, _nullArtist, {artist: artist});
    default:
      return state;
  }
};

export default ArtistReducer;

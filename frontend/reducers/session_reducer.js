import {RECEIVE_CURRENT_ARTIST, LOGOUT, RECEIVE_ERRORS} from '../actions/session_actions';
import merge from 'lodash/merge';

const _nullArtist = Object.freeze({
  currentArtist: null,
  errors: []
});

const SessionReducer = (state = _nullArtist, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_CURRENT_ARTIST:
      const currentArtist = action.currentArtist;
      return merge({}, _nullArtist, {
        currentArtist
      });
    case LOGOUT:
      return merge({}, _nullArtist);
    case RECEIVE_ERRORS:
      const errors = action.errors;
      return merge({}, _nullArtist, {
        errors
      });
    default:
      return state;
  }
};

export default SessionReducer;

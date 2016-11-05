import {RECEIVE_SONGS} from '../actions/song_upload_actions';
import merge from 'lodash/merge';

const _nullSongs = Object.freeze({
  songs:[],
  errors:[]
});

export const SongsReducer = (state = _nullSongs, action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_SONGS:
      return merge({}, state, {songs: action.songs});
    default:
      return state;
  }
};

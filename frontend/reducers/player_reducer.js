import { LOAD_SONG } from '../actions/media_player';
import merge from 'lodash/merge';

const _nullSong = '';

const PlayerReducer = (state = _nullSong, action) => {
  Object.freeze(state);

  switch (action.type) {
    case LOAD_SONG:
      return action.song;
    default:
      return state;
  }
};

export default PlayerReducer;

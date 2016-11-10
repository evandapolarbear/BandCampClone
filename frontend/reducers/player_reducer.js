import { LOAD_SONG } from '../actions/media_player';

const _nullSong = Object.freeze({
  song: '',
  artist: '',
});

const PlayerReducer = (state = _nullSong, action) => {
  Object.freeze(state);

  switch (action.type) {
    case LOAD_SONG:
      return {song:action.song, artist:action.artist};
    default:
      return state;
  }
};

export default PlayerReducer;

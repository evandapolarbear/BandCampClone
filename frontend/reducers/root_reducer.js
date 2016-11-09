import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import {SongsReducer} from './upload_song_reducer';
import SearchReducer from './search_reducer';
import PlayerReducer from './player_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  songs: SongsReducer,
  artist: SearchReducer,
  currentSong: PlayerReducer
});

export default RootReducer;

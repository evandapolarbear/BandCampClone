import { combineReducers } from 'redux';

import SessionReducer from './session_reducer';
import SongsReducer from './upload_song_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  songs: SongsReducer
});

export default RootReducer;

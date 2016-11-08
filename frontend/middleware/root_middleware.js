import { applyMiddleware } from 'redux';

import SessionMiddleware from './session_middleware';
import UploadSongMiddleware from './upload_song_middleware';
import UpdateImageMiddleware from './update_image_middleware';
import SearchMiddleware from './search_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  UploadSongMiddleware,
  UpdateImageMiddleware,
  SearchMiddleware
);

export default RootMiddleware;

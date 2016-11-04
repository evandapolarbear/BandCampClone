import { applyMiddleware } from 'redux';

import SessionMiddleware from './session_middleware';
import UploadSongMiddleware from './upload_song_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  UploadSongMiddleware
);

export default RootMiddleware;

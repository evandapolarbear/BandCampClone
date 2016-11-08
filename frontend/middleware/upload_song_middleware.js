import { FETCH_ALL_SONGS,
         UPLOAD_SONG,
         RECEIVE_SONGS,
         receiveSongs } from '../actions/song_upload_actions';

import { uploadSong, fetchAllSongs } from '../util/song_upload_api_util';



export default ({getState, dispatch}) => next => action => {
  const success = data => dispatch(receiveSongs(data));

  switch(action.type){
    case UPLOAD_SONG:
      debugger;
      uploadSong(action.title, action.url, action.artistId, success);
      next(action);
      break;
    case FETCH_ALL_SONGS:
      fetchAllSongs(action.id, success);
      next(action);
      break;
    default:
      next(action);
  }
};

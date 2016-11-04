import { UPLOAD_SONG,
         RECEIVE_SONG_URL,
         receiveSongUrl } from '../actions/song_upload_actions';



export default ({getState, dispatch}) => next => action => {

  switch(action.type){
    case UPLOAD_SONG:

      next(action);
      break;
    case RECEIVE_SONG_URL:

      next(action);
      break;
    default:
      next(action);
  }
};

import {FETCH_ARTIST, receiveArtist} from '../actions/search_actions';
import {fetchArtist} from '../util/search_util';


export default ({getState, dispatch}) => next => action => {
  const success = data => {
    dispatch(receiveArtist(data));
  };

  const error = data => {
    console.log(data);
  };

  switch(action.type){
    case FETCH_ARTIST:
      fetchArtist(action.id, success, error);
      next(action);
      break;
    default:
      next(action);
  }
};

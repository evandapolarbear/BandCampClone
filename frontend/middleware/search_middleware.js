import {FETCH_ARTIST, SEARCH_ARTISTS, receiveArtist, receiveArtists} from '../actions/search_actions';
import {fetchArtist, searchArtists} from '../util/search_util';


export default ({getState, dispatch}) => next => action => {
  const fetchSuccess = data => {
    dispatch(receiveArtist(data));
  };

  const searchSuccess = data => {
    dispatch(receiveArtists(data));
  };


  const error = data => {
    console.log(data);
  };

  switch(action.type){
    case FETCH_ARTIST:
      fetchArtist(action.id, fetchSuccess, error);
      next(action);
      break;
    case SEARCH_ARTISTS:
      searchArtists(action.string, searchSuccess, error);
      next(action);
      break;
    default:
      next(action);
  }
};

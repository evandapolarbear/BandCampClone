import { receiveCurrentArtist } from '../actions/session_actions';
import { updateBannerImage, updateProfileImage } from '../util/picture_update_util';
import { UPDATE_BANNER_PICTURE, UPDATE_PROFILE_PICTURE } from '../actions/update_picture_actions';


export default ({getState, dispatch}) => next => action => {
  const success = data => dispatch(receiveCurrentArtist(data));

  switch (action.type){
    case UPDATE_BANNER_PICTURE:
      updateBannerImage(action.url, success);
      next(action);
      break;
    case UPDATE_PROFILE_PICTURE:
      updateProfileImage(action.url, success);
      next(action);
      break;
    default:
      next(action);
  }
};

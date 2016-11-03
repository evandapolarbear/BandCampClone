import { receiveCurrentArtist,
         receiveErrors,
         LOGIN,
         GUEST_LOGIN,
         LOGOUT,
         SIGNUP } from '../actions/session_actions';

import{ login, signup, logout, guestLogin } from '../util/session_api_util';

export default ({getState, dispatch}) => next => action => {

  const successCallback = artist => {
    dispatch(receiveCurrentArtist(artist));
  };
  const errorCallback = error => dispatch(receiveErrors(error.responseJSON));

  switch(action.type) {
    case LOGIN:
      login(action.artist, successCallback, errorCallback);
      return next(action);
    case GUEST_LOGIN:
      guestLogin(successCallback, errorCallback);
      return next(action);
    case LOGOUT:
      logout(() => next(action));
      break;
    case SIGNUP:
      signup(action.artist, successCallback, errorCallback);
      return next(action);
    default:
      return next(action);
  }
};

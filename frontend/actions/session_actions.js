export const LOGIN = 'LOGN';
export const LOGOUT = 'LOGOUT';
export const SIGNUP = 'SIGNUP';
export const RECEIVE_CURRENT_ARTIST = 'RECEIVE_CURRENT_ARTIST';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const signup = artist => ({
  type: SIGNUP,
  artist
});

export const login = artist => ({
  type: LOGIN,
  artist
});

export const logout = () => ({
  type: LOGOUT
});

export const recieveCurrentArtist = currentArtist => ({
  type: RECEIVE_CURRENT_ARTIST,
  currentArtist
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

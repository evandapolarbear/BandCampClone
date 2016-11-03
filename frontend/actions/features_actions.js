export const GET_FEATURES = "GET_FEATURES";
export const RECEIVE_FEATURES = "RECEIVE_FEATURES";
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const getFeatures = () => ({
  type: GET_FEATURES
});

export const receiveFeatures = features => ({
  type: RECEIVE_FEATURES,
  features
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

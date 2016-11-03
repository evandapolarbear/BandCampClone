import {receiveFeatures, GET_FEATURES} from '../actions/features_actions';

import {getFeatures} from '../util/features_api';

export default ({getState, dispatch}) => next => action => {
  const successCallback = features => {
    dispatch(receiveFeatures(features))
  }
  const errorCallback = error => dispatch(receiveErrors(error.responseJSON));

  switch(action.type){
    case GET_FEATURES:
      getFeatures()
  }
}

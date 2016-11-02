import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';

import {signup, login, logout} from './util/session_api_util';

window.signup = signup;
window.login = login;
window.logout = logout;


document.addEventListener('DOMContentLoaded', () =>{
  let store;
  if (window.currentArtist){
    const preloadedState = {session: {currentArtist: window.currentArtist}};
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
});

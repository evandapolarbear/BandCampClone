import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import Modal from 'react-modal';

import {signup, login, logout, guestLogin} from './util/session_api_util';

window.signup = signup;
window.login = login;
window.logout = logout;
window.guest = guestLogin;




document.addEventListener('DOMContentLoaded', () =>{
  let store;
  if (window.currentArtist.username){
    const preloadedState = {session: {currentArtist: window.currentArtist}};
    store = configureStore(preloadedState);
  } else {
    store = configureStore();
  }

  window.store = store;

  Modal.setAppElement(document.body);
  const root = document.getElementById('root');
  ReactDOM.render(<Root store={store}/>, root);
});

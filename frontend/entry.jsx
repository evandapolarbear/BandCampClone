import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import Modal from 'react-modal';


import {fetchArtist, searchArtists, clearSearch} from './actions/search_actions';

window.clearSearch = clearSearch;


document.addEventListener('DOMContentLoaded', () =>{
  let store;
  if (window.currentArtist){
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

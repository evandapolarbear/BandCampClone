import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import Modal from 'react-modal';


import {uploadSong, fetchAllSongs} from './util/song_upload_api_util';

window.uploadSong = uploadSong;
window.fetchAllSongs = fetchAllSongs;





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

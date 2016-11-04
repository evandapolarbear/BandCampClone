import React from 'react';
import { Provider } from 'react-redux';

import {Router, Route, IndexRoute, hashHistory} from 'react-router';

import App from './app';
import ArtistProfileContainer from './artist_profile/artist_profile_container';
import SessionFormContainer from './session_form/session_form_container';
import {Splash} from './splash/splash';

const Root = ({store}) => {
  const _ensureLoggedIn = (nextState, replace) => {
    const currentArtist = store.getState().session.currentArtist.username;
    if (!currentArtist){
      replace('/');
    }
  };
  const _redirectIfLoggedIn = (nextState, replace) => {
    const currentArtist = store.getState().session.currentArtist;
    if (currentArtist) {
      replace('/');
    }
  };

  return (
    <Provider store={store}>
      <Router history={hashHistory}>
        <Route path="/" component={App}>
          <IndexRoute component={Splash} />
          <Route path='/profile' component={ArtistProfileContainer}
            onEnter={_ensureLoggedIn} />
        </Route>
      </Router>
    </Provider>
  );
};

export default Root;

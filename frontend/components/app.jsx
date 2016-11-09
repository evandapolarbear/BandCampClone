import React from 'react';
import LargeHeaderContainer from './large_header/large_header_container';
import MediaPlayerContainer from './media_player/media_player_container';
// import GreetingContainer from './greeting/greeting_container';

const App = ({ children }) => (
  <div>
    <header>
      <LargeHeaderContainer/>
    </header>
    {children}
    <footer>
      <MediaPlayerContainer/>
    </footer>
  </div>
);

export default App;

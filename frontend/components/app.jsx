import React from 'react';
import LargeHeaderContainer from './large_header/large_header_container';

// import GreetingContainer from './greeting/greeting_container';

const App = ({ children }) => (
  <div>
    <header>
      <LargeHeaderContainer/>
    </header>
    {children}
    <footer>

    </footer>
  </div>
);

export default App;

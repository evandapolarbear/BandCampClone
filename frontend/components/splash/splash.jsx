import React from 'react';

export const Splash = () => (
  <div id='splash'>
    <div className='col-70' id='main-splash'>
      <div id='esso-text'>
        <h3 id='esso-head'>
          Sylvan Esso
        </h3>
        <p id='esso-p'>Sylvan Esso release a new song</p>
      </div>
    </div>
    <div className='col-30' id='secondary-splash'>
      <div id='tom-waits' className="small-splash">
        <div className='second-splash-text'>
          <h4>
            Tom Waits
          </h4>
        </div>
      </div>
      <div id='vince-staples' className="small-splash">
        <div className='second-splash-text'>
          <h4>
            Vince Staples
          </h4>
        </div>
      </div>
      <div id='pup' className="small-splash">
        <div className='second-splash-text'>
          <h4>
            PUP
          </h4>
        </div>
      </div>
    </div>
  </div>
);

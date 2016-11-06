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
          <p>Still killing it at age 100</p>
        </div>
      </div>
      <div id='vince-staples' className="small-splash">
        <div className='second-splash-text'>
          <h4>
            Vince Staples
          </h4>
          <p>Is it too early to discuss rapper of the century?</p>
        </div>
      </div>
      <div id='pup' className="small-splash">
        <div className='second-splash-text'>
          <h4>
            PUP
          </h4>
          <p>Best thing from Canada since maple syrup?</p>
        </div>
      </div>
    </div>
  </div>
);

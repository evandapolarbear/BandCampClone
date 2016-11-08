import React from 'react';
import { hashHistory } from 'react-router';

class Splash extends React.Component{
  constructor(props){
    super(props);
  }

  clickMainSplash(){
    hashHistory.push('1');
  }

  clickFirstSplash(){
    hashHistory.push('2');
  }

  clickSecondSplash(){
    hashHistory.push('3');
  }

  clickThirdSplash(){
    hashHistory.push('4');
  }

  render(){
    return (
      <div id='splash'>
        <div className='col-70' id='main-splash' onClick={this.clickMainSplash}>
          <div id='esso-text'>
            <h3 id='esso-head'>
              Sylvan Esso
            </h3>
            <p id='esso-p'>Sylvan Esso release a new song</p>
          </div>
        </div>
        <div className='col-30' id='secondary-splash'>
          <div id='tom-waits' className="small-splash" onclick={this.clickFirstSplash}>
            <div className='second-splash-text' onclick={this.clickFirstSplash}>
              <h4>
                Tom Waits
              </h4>
            </div>
          </div>
          <div id='vince-staples' className="small-splash" onClick={this.clickSecondSplash}>
            <div className='second-splash-text'>
              <h4>
                Beyonce
              </h4>
            </div>
          </div>
          <div id='pup' className="small-splash" onClick={this.clickThirdSplash}>
            <div className='second-splash-text'>
              <h4>
                PUP
              </h4>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Splash;

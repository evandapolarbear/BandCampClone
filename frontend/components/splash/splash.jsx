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
    hashHistory.push('11');
  }

  clickSecondSplash(){
    hashHistory.push('12');
  }

  clickThirdSplash(){
    hashHistory.push('4');
  }

  render(){
    return (
      <div id='splash'>
        <div className='col-70 splash-box' id='main-splash' onClick={this.clickMainSplash}>
          <div id='main-text'>
            <h3>
              Sylvan Esso
            </h3>
            <p id='esso-p'>Sylvan Esso release a new song</p>
          </div>
        </div>
        <div className='col-30' id='secondary-splash'>
          <div id='small-splash-1' className="small-splash splash-box" onClick={this.clickFirstSplash}>
            <div className='second-splash-text'>
              <h4>
                The National
              </h4>
            </div>
          </div>
          <div id='small-splash-2' className="small-splash splash-box" onClick={this.clickSecondSplash}>
            <div className='second-splash-text'>
              <h4>
                Shakey Graves
              </h4>
            </div>
          </div>
          <div id='small-splash-3' className="small-splash splash-box" onClick={this.clickThirdSplash}>
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

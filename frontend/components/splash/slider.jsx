import React from 'react';
import Slider from 'react-slick';
import SliderData from './slider_obj';

class SimpleSlider extends React.Component{
  constructor(props){
    super(props);

    this.state = SliderData;
  }

  makeActive(genre){
    return (e => {
      e.preventDefaults;

      const buttonId = "b-" + genre;

      document.getElementById('hip-hop').classList.remove('genre-show');
      document.getElementById('pop').classList.remove('genre-show');
      document.getElementById('rock').classList.remove('genre-show');
      document.getElementById('edm').classList.remove('genre-show');

      document.getElementById('b-hip-hop').classList.remove('active-genre-button');
      document.getElementById('b-pop').classList.remove('active-genre-button');
      document.getElementById('b-rock').classList.remove('active-genre-button');
      document.getElementById('b-edm').classList.remove('active-genre-button');

      document.getElementById(genre).classList.add('genre-show');
      document.getElementById(buttonId).classList.add('active-genre-button');
    });
  }

  render(){
    return (
      <div className="slider">
        <h2 className="splash-heading">Discover</h2>
        <div className="genre-buttons">
          <button id="b-pop" className="active-genre-button" onClick={this.makeActive("pop")}>Pop</button>
          <button id="b-rock" onClick={this.makeActive("rock")}>Rock</button>
          <button id="b-hip-hop" onClick={this.makeActive("hip-hop")}>Hip-Hop/R&B</button>
          <button id="b-edm" onClick={this.makeActive("edm")}>Electronic</button>
        </div>

        <div className="slider-track">
          <div className='genre-container genre-show' id='pop'>
            <div className="genre-list">
              {this.state.pop.map(obj =>{
                const imgUrl = {backgroundImage: 'url(' + obj.imgUrl + ')'};
                const name = obj.name;
                const songUrl = obj.songUrl;
                const songTitle = obj.title;

                const playObj = {
                  artist: {username: name},
                  song: {url: songUrl, title: songTitle }
                };

                return(
                  <div onClick={() => this.props.playSong(playObj)} className="slider-item">
                    <div className="slider-item-img"
                      style={imgUrl}></div>
                    <span>{name}</span>
                  </div>
                );
              })}
            </div>
          </div>
          <div className='genre-container' id='rock'>
            <div className="genre-list">
              {this.state.rock.map(obj =>{
                const imgUrl = {backgroundImage: 'url(' + obj.imgUrl + ')'};
                const name = obj.name;
                const songUrl = obj.songUrl;
                const songTitle = obj.title;

                const playObj = {
                  artist: {username: name},
                  song: {url: songUrl, title: songTitle }
                };

                return(
                  <div onClick={() => this.props.playSong(playObj)} className="slider-item">
                    <div className="slider-item-img"
                      style={imgUrl}></div>
                    <span>{name}</span>
                  </div>
                );
              })}
            </div>
          </div>
          <div className='genre-container' id='hip-hop'>
            <div className="genre-list">
              {this.state.hipHop.map(obj =>{
                const imgUrl = {backgroundImage: 'url(' + obj.imgUrl + ')'};
                const name = obj.name;
                const songUrl = obj.songUrl;
                const songTitle = obj.title;

                const playObj = {
                  artist: {username: name},
                  song: {url: songUrl, title: songTitle }
                };

                return(
                  <div onClick={() => this.props.playSong(playObj)} className="slider-item">
                    <div className="slider-item-img"
                      style={imgUrl}></div>
                    <span>{name}</span>
                  </div>
                );
              })}
            </div>
          </div>
          <div className='genre-container' id='edm'>
            <div className="genre-list">
              {this.state.edm.map(obj =>{
                const imgUrl = {backgroundImage: 'url(' + obj.imgUrl + ')'};
                const name = obj.name;
                const songUrl = obj.songUrl;
                const songTitle = obj.title;

                const playObj = {
                  artist: {username: name},
                  song: {url: songUrl, title: songTitle }
                };

                return(
                  <div onClick={() => this.props.playSong(playObj)} className="slider-item">
                    <div className="slider-item-img"
                      style={imgUrl}></div>
                    <span>{name}</span>
                  </div>
                );
              })}
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default SimpleSlider;

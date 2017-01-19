import React from 'react';
import Slider from 'react-slick';

class SimpleSlider extends React.Component{
  constructor(props){
    super(props);
  }

  renderOptions(genreObjs){
    const popDisc = [
      {imgUrl: "",
      name: "",
      songUrl: ""}, 
    ]

    return (
      <div className="genre-list">
        {genreObj.forEach(obj =>{
          const imgUrl = obj.imgUrl;
          const name = obj.name;
          const songUrl = obj.songUrl;

          return(
            <div classList="slider-item">


            </div>
          );
        })
        }
      </div>
    )
  },

  makeActive(genre){
    return (e => {
      e.preventDefaults;

      document.getElementById('hip-hop').classList.remove('genre-show');
      document.getElementById('pop').classList.remove('genre-show');
      document.getElementById('rock').classList.remove('genre-show');
      document.getElementById('other').classList.remove('genre-show');
      document.getElementById('edm').classList.remove('genre-show');

      document.getElementById(genre).classList.add('genre-show');
    });
  }

  render(){
    var settings = {
      dots: true,
      dotClass: "genre-button",
      className: "slider-div",
      slidesToShow: 1,
      slidesToScroll: 1
    };
    return (
      <div className="slider">
        <h2 className="splash-heading">Discover</h2>
        <div className="genre-buttons">
          <button onClick={this.makeActive("pop")}>Pop</button>
          <button onClick={this.makeActive("rock")}>Rock</button>
          <button onClick={this.makeActive("hip-hop")}>Hip-Hop/R&B</button>
          <button onClick={this.makeActive("edm")}>Electronic</button>
          <button onClick={this.makeActive("other")}>Other</button>
        </div>

        <div className="slider-track">
          <div className='genre-container genre-show' id='pop'>
            <h2>
              This is the pop container
            </h2>
          </div>
          <div className='genre-container' id='rock'>
            <h2>
              This is the rock container
            </h2>
          </div>
          <div className='genre-container' id='hip-hop'>
            <h2>
              This is the hip-hop container
            </h2>
          </div>
          <div className='genre-container' id='edm'>
            <h2>
              This is the edm container
            </h2>
          </div>
          <div className='genre-container' id='other'>
            <h2>
              This is the other container
            </h2>
          </div>
        </div>
      </div>
    );
  }
}

export default SimpleSlider;

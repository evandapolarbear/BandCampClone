import React from 'react';
import Slider from 'react-slick';

class SimpleSlider extends React.Component{
  constructor(props){
    super(props);

    this.state = {
      pop: [
        {name: "Taylor Swift",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1478813638/swift_banner_amffgk.png",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478757281/06_Shake_It_Off_mla0vv.mp3"},
        {name: "Beyonce",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1478560551/beyonce_profile_2_i8uesk.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484784961/01._Pray_You_Catch_Me_de8wel.mp3"}
      ],
      rock: [
        {name: "Brian Fallon",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1484786683/BFp_sjuwtc.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786844/1-02_Painkillers_e8ufyq.mp3"},
        {name: "Tom Waits",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1478559988/Tom-Waits-banner_2_yj15te.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786844/1-02_Painkillers_e8ufyq.mp3"},
        {name: "Iron Chic",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1484799631/ICp_urnsrd.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799799/01_L_esprit_de_L_escalier_v2d4du.m4a"},
        {name: "Wilco",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1478818668/wilco_profile_xt3yru.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819019/05_Side_With_The_Seeds_c1wbs4.mp3"}
      ],
      hipHop: [
        {name: "Anderson Paak",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1484787446/app_vus5gi.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788018/16._The_Dreamer_feat._Talib_Kweli_Timan_Family_Choir_uw3jwa.mp3"},
        {name: "St. Paul & the Broken Bones",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1478815877/st_paul_profile_sx7wga.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816364/04_Like_a_Mighty_River_qiijkt.mp3"},
        {name: "Vince Staples",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1484788398/vsp_g6ixyj.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788609/05_Prima_Donna_feat_A_AP_Rocky_uwk3v1.mp3"},
      ],
      edm: [
        {name: "Matt & Kim",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_125/w_125/v1484785701/m_k_weylao.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785882/01_Fall_to_Pieces_t5xgms.m4a"},
      ]
    };
  }

  makeActive(genre){
    return (e => {
      e.preventDefaults;

      const buttonId = "b-" + genre;

      document.getElementById('hip-hop').classList.remove('genre-show');
      document.getElementById('pop').classList.remove('genre-show');
      document.getElementById('rock').classList.remove('genre-show');
      document.getElementById('other').classList.remove('genre-show');
      document.getElementById('edm').classList.remove('genre-show');

      document.getElementById('b-hip-hop').classList.remove('active-genre-button');
      document.getElementById('b-pop').classList.remove('active-genre-button');
      document.getElementById('b-rock').classList.remove('active-genre-button');
      document.getElementById('b-other').classList.remove('active-genre-button');
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
          <button id="b-other" onClick={this.makeActive("other")}>Other</button>
        </div>

        <div className="slider-track">
          <div className='genre-container genre-show' id='pop'>
            <div className="genre-list">
              {this.state.pop.map(obj =>{
                const imgUrl = {backgroundImage: 'url(' + obj.imgUrl + ')'};
                const name = obj.name;
                const songUrl = obj.songUrl;

                return(
                  <div className="slider-item">
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

                return(
                  <div className="slider-item">
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

                return(
                  <div className="slider-item">
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

                return(
                  <div className="slider-item">
                    <div className="slider-item-img"
                      style={imgUrl}></div>
                    <span>{name}</span>
                  </div>
                );
              })}
            </div>
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

// {genreObjs.forEach(obj =>{
//   const imgUrl = {backgroundImage: 'url(' + obj.imgUrl + ')'};
//   const name = obj.name;
//   const songUrl = obj.songUrl;
//
//   return(
//     <div classList="slider-item">
//       <div className="slider-item-img"
//         style={imgUrl}></div>
//       <span>{name}</span>
//     </div>
//   );
// })
// }

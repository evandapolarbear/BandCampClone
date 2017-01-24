import React from 'react';
import Slider from 'react-slick';

class SimpleSlider extends React.Component{
  constructor(props){
    super(props);

    this.state = {
      pop: [
        {name: "Taylor Swift",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478813638/swift_banner_amffgk.png",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478757281/06_Shake_It_Off_mla0vv.mp3",
          title: "Shake it off"
        },
        {name: "Justin Timberlake",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485295813/jtp_oihj5m.jpg",
          songUrl: "https://www.youtube.com/watch?v=3gOHvDP_vCs",
          title: "SexyBack"
        },
        {name: "Beyonce",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478560551/beyonce_profile_2_i8uesk.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484784961/01._Pray_You_Catch_Me_de8wel.mp3",
          title: "Pray You Catch Me"
        },
        {name: "Justin Beiber",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484850202/jbp_quasqu.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484851655/04_Sorry_pjn2tn.mp3",
          title: "Sorry"
        },
        {name: "Katy Perry",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485296408/kpp_e1tlhj.jpg",
          songUrl: "https://www.youtube.com/watch?v=QGJuMBdaqIw",
          title: "Fireworks"
        },
        {name: "Adele",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484852945/ap_ghh9ck.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484852385/01_Hello_jvwqmb.m4a",
          title: "Hello"
        },
        {name: "Bruno Mars",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485237184/bmp_o5cyus.jpg",
          songUrl: "https://www.youtube.com/watch?v=UqyT8IEBkvY",
          title: "24k Magic"
        },
        {name: "Drake",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485237321/dp_busnvw.jpg",
          songUrl: "https://www.youtube.com/watch?v=uxpDa-c-4Mc",
          title: "Hotline Bling"
        }
      ],
      rock: [
        {name: "Brian Fallon",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484786683/BFp_sjuwtc.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484786844/1-02_Painkillers_e8ufyq.mp3",
        title: "PainKillers"
      },
        {name: "Tom Waits",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478559988/Tom-Waits-banner_2_yj15te.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478761348/01_Chicago_ainiqn.m4a",
          title: "Chicago"
        },
        {name: "Iron Chic",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484799631/ICp_urnsrd.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484799799/01_L_esprit_de_L_escalier_v2d4du.m4a",
          title: "L' Esprit de L' Escalier"
        },
        {name: "Wilco",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478818668/wilco_profile_xt3yru.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478819019/05_Side_With_The_Seeds_c1wbs4.mp3",
          title: "Side With The Seeds"
        },
        {name: "Pup",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478561998/pup_profile_3_egcjhq.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815507/02_Dvp_qcfgdr.m4a",
          title: "Dvp"
        },
        {name: "The National",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478820180/national_profile_2_et5dqm.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478820596/Wake_Up_Your_Saints_vvxmjo.mp3",
          title: "Wake Up Your Saints"
        },
        {name: "Shakey Graves",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478821253/shakey_profile_m7qc1a.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478821760/06_Business_Lunch_as83qw.m4a",
          title: "Business Lunch"
        },
        {name: "Jeff Rosenstock",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478728332/jeff_profile_amvq8f.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478729159/04_Staring_Out_The_Window_At_Your_Old_Apartment_slr1zi.mp3",
          title: "Staring out the Window"
        }
      ],
      hipHop: [
        {name: "Anderson Paak",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484787446/app_vus5gi.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788018/16._The_Dreamer_feat._Talib_Kweli_Timan_Family_Choir_uw3jwa.mp3",
          title: "The Dreamer"
        },
        {name: "St. Paul & the Broken Bones",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478815877/st_paul_profile_sx7wga.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478816364/04_Like_a_Mighty_River_qiijkt.mp3",
          title: "Like a Mighty River"
        },
        {name: "Vince Staples",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484788398/vsp_g6ixyj.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484788609/05_Prima_Donna_feat_A_AP_Rocky_uwk3v1.mp3",
          title: "Prima Donna"
        },
        {name: "Miles Davis",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478814601/miles_davis_profile_l8vmyj.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478815500/01_So_What_aanmc5.mp3",
          title: "So What"
        },
        {name: "Drake",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485237321/dp_busnvw.jpg",
          songUrl: "https://www.youtube.com/watch?v=RubBzkZzpUA",
          title: "Started from the bottom"
        },
        {name: "Amy Winehouse",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485279160/awp_vkor1r.jpg",
          songUrl: "https://www.youtube.com/watch?v=d_EADBnXjXc",
          title: "Valery"
        },
        {name: "Sam Cooke",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478813768/sam_cooke_profile_rzglyy.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478814173/11_That_s_It_I_Quit_I_m_Movin_On_hriv4u.mp3",
          title: "Thats It I quit"
        },
        {name: "Mos Def",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485293864/mdp_wj2wdb.jpg",
          songUrl: "https://www.youtube.com/watch?v=m5vw4ajnWGA",
          title: "Mathmatics"
        }
      ],
      edm: [
        {name: "Matt & Kim",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484785701/m_k_weylao.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484785882/01_Fall_to_Pieces_t5xgms.m4a",
          title: "Fall to Pieces"
        },
        {name: "Odesza",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1484850206/odp_rf89mr.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1484850769/02_How_Did_I_Get_Here_wukyye.mp3",
          title: "How did I get Here"
        },
        {name: "Sylvan Esso",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1478559077/esso_profile_2_qnvvwe.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1478759561/07_Coffee_exqhjv.m4a",
          title: "Coffee"
        },
        {name: "Ratatat",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485295304/rtp_p2junx.jpg",
          songUrl: "https://www.youtube.com/watch?v=8WQiEqy8Pa4",
          title: "Breaking Away"
        },
        {name: "Son Lux",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485239937/slp_zgvbl1.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239354/02_Lost_It_To_Trying_etepu7.m4a",
          title: "Lost It Trying"
        },
        {name: "Flume",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485239613/fp_topfhe.jpg",
          songUrl: "http://res.cloudinary.com/dnkmsdtmu/video/upload/v1485239099/15_-_Free_j5auis.mp3",
          title: "Free"
        },
        {name: "Tokimonsta",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485277067/tmp_nqopqs.jpg",
          songUrl: "https://www.youtube.com/watch?v=1nwbuMqH2bQ",
          title: "Steal My Attention"
        },
        {name: "Jai Paul",
          imgUrl: "http://res.cloudinary.com/dnkmsdtmu/image/upload/h_75/w_75/v1485278288/jpb_rb3dib.png",
          songUrl: "https://www.youtube.com/watch?v=oeCsdUdWOPY",
          title: "BTSTU"
        },
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

import React from 'react';

import ArtistViewContainer from './artist_view_container';

import { SongListing } from '../song/song';
import {withRouter} from 'react-router';

class ArtistView extends React.Component {
  constructor(props) {
    super(props);


    this.profileImgProportionFixer = this.profileImgProportionFixer.bind(this);
    this.bannerImgProportionFixer = this.bannerImgProportionFixer.bind(this);
    this.usernameMod = this.usernameMod.bind(this);
  }

  componentWillMount(){
    const artistToFetch = this.props.artistToFetch;
    this.props.fetchAllSongs(artistToFetch);
    this.props.fetchArtist(artistToFetch);
  }

  profileImgProportionFixer(){
    if (this.props.artist.username !== '') {
      const urlArray = this.props.artist.image_url.split('/');
      const splitIdx = urlArray.indexOf('upload');
      const left = urlArray.slice(0, splitIdx).join('/');
      const right = urlArray.slice(splitIdx + 1).join('/');
      return left + '/upload/h_300/w_300/' + right;
    } else {
      return undefined;
    }
  }

  bannerImgProportionFixer(){
    if (this.props.artist.username !== '') {
      const urlArray = this.props.artist.banner_url.split('/');
      const splitIdx = urlArray.indexOf('upload');
      const left = urlArray.slice(0, splitIdx).join('/');
      const right = urlArray.slice(splitIdx + 1).join('/');
      return left + '/upload/h_180/' + right;
    } else {
      return undefined;
    }
  }

  usernameMod(){
    let name = this.props.artist.username;
    if(name.length > 20){
      return name.slice(0, 20) + '...';
    } else {
      return name;
    }
  }


  render(){
    const bannerStyle = {
      backgroundImage: 'url(' + this.props.artist.banner_url + ')'
    };

    const profileStyle = {
      backgroundImage: 'url(' + this.profileImgProportionFixer() + ')'
    };

    return (
      <div id='artist-profile'>
        <div id='artist-banner' style={bannerStyle}>
            <div className="profile-name">
              <h2>
                {this.usernameMod()}
              </h2>
            </div>

            <div className="update-buttons" id="banner-button">
            </div>

        </div>
        <div id='profile-picture' style={profileStyle}>
          <div className="update-buttons" id='profile-button'>
          </div>
        </div>


        <div className="col-30" id="song-column">

        <div className="update-buttons" id='song-button'>
        </div>

            <ul className='song-list'>
              {this.props.songs.map(song => (
                <SongListing key={song.id} song={song} artist={this.props.artist} loadSong={this.props.loadSong}/>
                ))
              }
            </ul>
        </div>

        <div className="col-30" id='profile-player-column'>
          <div id='blurb'>
            <p>
              {this.props.artist.blurb}
            </p>
          </div>

        </div>
      </div>
    );
  }
}


export default withRouter(ArtistView);

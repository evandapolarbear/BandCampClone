import React from 'react';

import ArtistProfileContainer from './artist_profile_container';
import {SongListing} from '../song/song';
import SongUploadButtonContainer from '../song_upload/song_upload_container';
import UpdateBannerUrl from '../update_pic_buttons/update_banner_container';
import UpdateProfileUrl from '../update_pic_buttons/update_profile_container';

import {withRouter} from 'react-router';


class ArtistProfile extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      songBeingPlayed: "hello"
    };

    this.selectSongToPlay = this.selectSongToPlay.bind(this);
    this.usernameMod = this.usernameMod.bind(this);
  }

  selectSongToPlay(url) {
    console.log(this.state);
    this.setState({songBeingPlayed: url});
  }

  componentWillMount(){
    const artistToFetch = this.props.currentArtistId;
    this.props.fetchAllSongs(artistToFetch);
  }


  update(field) {
		return e => this.setState({
			[field]: e.currentTarget.value
		});
	}

  usernameMod(){
    let name = this.props.username;
    if(name.length > 20){
      return name.slice(0, 20) + '...';
    } else {
      return name;
    }
  }

  render(){

    const bannerStyle = {
      backgroundImage: 'url(' + this.props.bannerUrl + ')'
    };

    const profileStyle = {
      backgroundImage: 'url(' + this.props.imageUrl + ')'
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
              <UpdateBannerUrl />
            </div>

        </div>
        <div id='profile-picture' style={profileStyle}>
          <div className="update-buttons" id='profile-button'>
            <UpdateProfileUrl />
          </div>
        </div>


        <div className="col-30" id="song-column">

        <SongUploadButtonContainer />

            <ul>
              {this.props.songs.map(song => (
                <SongListing key={song.id} song={song} selectSong={this.selectSongToPlay}/>
                ))
              }
            </ul>
        </div>


        <div className="col-30" id='profile-player-column'>
          <div id='blurb'>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
          </div>

        </div>
      </div>
    );
  }
}

export default withRouter(ArtistProfile);

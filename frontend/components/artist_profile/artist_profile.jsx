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
      upload: false,
      uploadTitle: 'Track Title'
    };

    this.titleInput = this.titleInput.bind(this);
    this.showTitleInput = this.showTitleInput.bind(this);
  }

  //define function to tell which user to fetch after you

  componentWillMount(){
    const artistToFetch = this.props.currentArtistId; // use || for own params to fetch artist from params if they exist
    this.props.fetchAllSongs(artistToFetch);
  }


  update(field) {
		return e => this.setState({
			[field]: e.currentTarget.value
		});
	}

  titleInput(){
    if (this.state.upload === true ){
      return (
        <form>
          <input type='text'
            value={this.state.uploadTitle}
            onChange={this.update('uploadTitle')} />
          <SongUploadButtonContainer title={this.state.title}/>
        </form>
      );
    }
  }

  showTitleInput(){
    if(this.state.upload === false) {
      this.setState({upload: true});
    } else{
      this.setState({upload: false});
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
            <h2 className="profile-name">
              {this.props.username}
            </h2>

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

        <div className="update-buttons" id='song-button'>
          <button onClick={this.showTitleInput}>Upload Song</button>
        </div>

        {this.titleInput()}

            <ul>
              {this.props.songs.map(song => (
                <SongListing key={song.id} song={song}/>
                ))
              }
            </ul>
        </div>


        <div className="col-30" id='profile-player-column'>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </div>
      </div>
    );
  }
}

export default withRouter(ArtistProfile);

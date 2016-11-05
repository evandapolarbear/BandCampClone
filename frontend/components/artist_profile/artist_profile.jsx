import React from 'react';

import ArtistProfileContainer from './artist_profile_container';
import {SongListing} from '../song/song';
import SongUploadButtonContainer from '../song_upload/song_upload_container';

import {withRouter} from 'react-router';


class ArtistProfile extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      upload: false,
      uploadTitle: ''
    };

    this.titleInput = this.titleInput.bind(this);
    this.showTitleInput = this.showTitleInput.bind(this);
  }

  //define function to tell which user to fetch after you

  componentWillMount(){
    const artistToFetch = this.props.currentArtistId; // use || for own params to fetch artist from params if they exist
   this.props.fetchAllSongs(artistToFetch);
  }

  titleInput(){
    if (this.state.upload === true ){
      return (
        <form>
          <input value="Song Title"></input>
          <button>Attach File</button>
        </form>
      );
    }
  }

  showTitleInput(){
    this.setState({upload: true});
  }

  render(){
    return (
      <div id='artist-profile'>
        <div id='artist-banner'>
            <h2 className="profile-name">
              {this.props.username}
            </h2>
        </div>
        <div id='profile-picture'></div>


        <div className="col-30" id="song-column">

          <button onClick={this.showTitleInput}>Upload Song</button>

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

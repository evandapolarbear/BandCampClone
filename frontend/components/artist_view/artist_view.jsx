import React from 'react';

import ArtistViewContainer from './artist_view_container';

import { SongListing } from '../song/song';
import {withRouter} from 'react-router';

class ArtistView extends React.Component {
  constructor(props) {
    super(props);

  }

  componentWillMount(){
    const artistToFetch = this.props.artistToFetch;
    this.props.fetchAllSongs(artistToFetch);
    this.props.fetchArtist(artistToFetch);
  }

  render(){
    const bannerStyle = {
      backgroundImage: 'url(' + this.props.artist.banner_url + ')'
    };

    const profileStyle = {
      backgroundImage: 'url(' + this.props.artist.image_url + ')'
    };

    return (
      <div id='artist-profile'>
        <div id='artist-banner' style={bannerStyle}>
            <h2 className="profile-name">
              {this.props.artist.username}
            </h2>

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

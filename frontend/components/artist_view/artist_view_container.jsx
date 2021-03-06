import ArtistView from './artist_view';

import { connect } from 'react-redux';
import { fetchAllSongs } from '../../actions/song_upload_actions';
import { fetchArtist } from '../../actions/search_actions';
import { loadSong } from '../../actions/media_player';


const mapStateToProps = ({session, songs, artist}, ownProps) => ({
  artist: artist.artist,
  artistToFetch: ownProps.params.artistId,
  songs: songs
});

const mapDispatchToProps = dispatch => ({
  fetchAllSongs: id => dispatch(fetchAllSongs(id)),
  fetchArtist: id => dispatch(fetchArtist(id)),
  loadSong: url => dispatch(loadSong(url))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ArtistView);

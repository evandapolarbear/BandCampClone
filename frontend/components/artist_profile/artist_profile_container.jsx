import ArtistProfile from './artist_profile';

import { connect } from 'react-redux';
import { fetchAllSongs } from '../../actions/song_upload_actions';

const mapStateToProps = ({session, songs}) => ({
  currentArtistId: session.currentArtist.id,
  username: session.currentArtist.username,
  bannerUrl: session.currentArtist.banner_url,
  imageUrl: session.currentArtist.image_url,
  songs: songs.songs
});

const mapDispatchToProps = dispatch => ({
  fetchAllSongs: id => dispatch(fetchAllSongs(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ArtistProfile);

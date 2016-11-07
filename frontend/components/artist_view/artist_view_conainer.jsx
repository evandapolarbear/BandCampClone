import ArtistView from './artist_view';

import { connect } from 'react-redux';
import { fetchAllSongs } from '../../actions/song_upload_actions';

const mapStateToProps = (store, {ownParams}) => ({
  artist: ownParams.params.artistId

});

const mapDispatchToProps = dispatch => ({
  fetchAllSongs: id => dispatch(fetchAllSongs(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ArtistView);

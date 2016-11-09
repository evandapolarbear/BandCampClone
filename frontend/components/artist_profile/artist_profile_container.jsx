import ArtistProfile from './artist_profile';

import { connect } from 'react-redux';
import { fetchAllSongs } from '../../actions/song_upload_actions';

const mapStateToProps = state =>

{
  return(
    {

      currentArtistId: state.session.currentArtist.id,
      username: state.session.currentArtist.username,
      bannerUrl: state.session.currentArtist.banner_url,
      imageUrl: state.session.currentArtist.image_url,
      songs: state.songs
    }
  );
};

const mapDispatchToProps = dispatch => ({
  fetchAllSongs: id => dispatch(fetchAllSongs(id))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(ArtistProfile);

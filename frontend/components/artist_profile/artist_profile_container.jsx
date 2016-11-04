import { connect } from 'react-redux';
import ArtistProfile from './artist_profile';

const mapStateToProps = ({session}) => ({
  username: session.currentArtist.username,
  bannerUrl: session.currentArtist.banner_url,
  imageUrl: session.currentArtist.image_url
});

export default connect(
  mapStateToProps
)(ArtistProfile);

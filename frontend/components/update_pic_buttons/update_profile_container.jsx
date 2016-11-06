import { connect } from 'react-redux';
import UploadProfile from './update_profile';
import {updateProfilePicture} from '../../actions/update_picture_actions';

const mapStateToProps = ({session}) =>({
  currentArtistId: session.currentArtist.id
});

const mapDispatchToProps = dispatch => ({
  updateProfile: url =>
  dispatch(updateProfilePicture(url))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UploadProfile);

import { connect } from 'react-redux';
import UploadBanner from './update_banner';
import {updateBanner} from '../../actions/update_picture_actions';

const mapStateToProps = ({session}) => ({
  currentArtistId: session.currentArtist.id
});

const mapDispatchToProps = dispatch => ({
  updateBanner: url => dispatch(updateBanner(url))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(UploadBanner);

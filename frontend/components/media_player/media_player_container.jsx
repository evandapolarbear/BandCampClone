import { connect } from 'react-redux';
import MediaPlayer from './media_player';

const mapStateToProps = ({currentSong}) => ({
  currentSong: currentSong
});

export default connect(
  mapStateToProps
)(MediaPlayer);

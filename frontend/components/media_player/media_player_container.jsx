import { connect } from 'react-redux';
import MediaPlayer from './media_player';

const mapStateToProps = ({currentSong}) => ({
  currentSong: currentSong.song,
  currentArtist: currentSong.artist
});

export default connect(
  mapStateToProps
)(MediaPlayer);

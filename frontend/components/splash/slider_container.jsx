import React from 'react';
import {connect} from 'react-redux';

import {loadSong} from '../../actions/media_player';

import SimpleSlider from './slider';




const mapStateToProps = ({session}) => ({
  currentArtistId: session.currentArtist.id
});

const mapDispatchToProps = dispatch => ({
  playSong: payload => (dispatch(loadSong(payload)))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SimpleSlider);

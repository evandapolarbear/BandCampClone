import React from 'react';

import SongUploadButton from './song_upload_button';

import {connect} from 'react-redux';
import {uploadSongToRails} from '../../actions/song_upload_actions';



const mapStateToProps = ({session}) => ({
  currentArtistId: session.currentArtist.id,
});

const mapDispatchToProps = dispatch => ({
  uploadSongToRails: (payload) => (dispatch(uploadSongToRails(payload)))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SongUploadButton);

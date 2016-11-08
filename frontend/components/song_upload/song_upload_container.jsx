import React from 'react';

import SongUploadButton from './song_upload_button';

import {connect} from 'react-redux';
import {uploadSongToRails} from '../../actions/song_upload_actions';



const mapStateToProps = ({session}) => ({
  currentArtistId: session.currentArtist.id,
});

const mapDispatchToProps = dispatch => ({
  uploadSongToRails: (title, url, id) => (dispatch(uploadSongToRails(title, url, id))),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SongUploadButton);

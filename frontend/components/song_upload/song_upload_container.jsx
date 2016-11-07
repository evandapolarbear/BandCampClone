import React from 'react';

import SongUploadButton from './song_upload_button';

import {connect} from 'react-redux';
import {uploadSongToRails} from '../../actions/song_upload_actions';



const mapStateToProps = (store, ownProps) => ({
  currentArist: store.session.currentArist,
  title: ownProps.title
});

const mapDispatchToProps = dispatch => ({
  uploadSongToRails: url => (dispatch(uploadSongToRails(url))),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(SongUploadButton);

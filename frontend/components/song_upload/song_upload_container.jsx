import React from 'react';

import SongUploadButton from './song_upload_button';

import {connect} from 'react-redux';
import {uploadUrl} from '../../actions/song_upload_actions';



const mapStateToProps = ({session}) => ({
  currentArist: session.currentArist
});

const mapDispatchToProps = dispatch => ({
  uploadUrl: url => (dispatch(uploadUrl(url))),
});

export default connect(
  mapStateToProps
)(SongUploadButton);

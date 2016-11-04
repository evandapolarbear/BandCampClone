import { connect } from 'react-redux';
import LargeHeader from './large_header';

import {login, logout, signup, guestLogin} from "../../actions/session_actions";

const mapStateToProps = ({session}) => ({
  currentArtist: session.currentArtist,
  errors: session.currentArtist,
});

const mapDispatchToProps = dispatch => ({
  login: artist => dispatch(login(artist)),
  logout: () => dispatch(logout()),
  signup: artist => dispatch(signup(artist)),
  guestLogin: () => dispatch(guestLogin()),
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(LargeHeader);

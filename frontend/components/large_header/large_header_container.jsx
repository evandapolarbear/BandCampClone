import { connect } from 'react-redux';
import LargeHeader from './large_header';

import {login, logout, signup} from "../../actions/session_actions";

const mapDispatchToProps = dispatch => ({
  login: artist => dispatch(login(artist)),
  logout: () => dispatch(logout()),
  signup: artist => dispatch(signup(artist)),
});

export default connect(
  mapDispatchToProps
)(LargeHeader);

import React from 'react';
import Modal from 'react-modal';
import ModalStyle from './modal_style';
import SessionFormContainer from '../session_form/session_form_container';
import {Link, withRouter} from 'react-router';


class LargeHeader extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalOpen: false,
      formType: 'login'
    };

    this.onModalClose = this.onModalClose.bind(this);
  }

  __handleClick(type){
    this.setState({modalOpen: true, formType: type});
  }

  onModalClose(){
    this.setState({modalOpen:false});
  }

  componentWillReceiveProps(){
    if(this.props.errors === null){
      this.onModalClose();
    }
  }

  form(){
    if(this.state.formType === 'login'){
      return (<SessionFormContainer formType='login' />);
    } else {
      return (<SessionFormContainer formType='signup' />);
    }
  }

  loggedInHeader(){
    return (
      <div className="large-header">
        <Link to="/" className="header-logo"><h1>BandCamper</h1></Link>
        <nav className="head-nav">
          <Link className="header-button"
            onClick={this.props.logout}
            to='/'>Log Out</Link>
        </nav>
      </div>
    );
  }

  loggedOutHeadder(){
    return (
      <div className="large-header">
        <Link to="/" className="header-logo"><h1>BandCamper</h1></Link>
        <nav className="head-nav">
          <Link className="header-button"
            onClick={this.__handleClick.bind(this, 'login')}>Log In</Link>
          <Link className="header-button" onClick={this.__handleClick.bind(this,'signin')}>Sign Up</Link>
          <Link onClick={this.props.guestLogin} className="header-button">Guest Login</Link>
        </nav>

        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this.onModalClose}
          style={ModalStyle}
          >
          {this.form()}
        </Modal>
      </div>
    );
  }



  render(){
    if(this.props.currentArtist.username){
      return(this.loggedInHeader());
    }
    return(this.loggedOutHeadder());
  }
}

export default withRouter(LargeHeader);

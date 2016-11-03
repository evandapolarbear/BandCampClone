import React from 'react';
import Modal from 'react-modal';
import ModalStyle from './modal_style';
import SessionFormContainer from '../session_form/session_form_container';
import {Link} from 'react-router';

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
    this.onModalClose();
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
      <div id="large-header">
        <p>
          {this.props.currentArtist.username}
        </p>
        <button className="header-button" onClick={this.props.logout}>Log Out</button>
      </div>
    );
  }

  loggedOutHeadder(){
    return (
      <div id="large-header">
        <Link to="/" className="header-link"><h1>BandCamper</h1></Link>
        <nav id="header-buttons">

          <button className="header-button"
            onClick={this.__handleClick.bind(this, 'login')}>Log In</button>
          <button className="header-button" onClick={this.__handleClick.bind(this,'signin')}>Sign Up</button>
          <button onClick={this.props.guestLogin} className="header-button">Guest Login</button>
        </nav>

        <Modal
          isOpen={this.state.modalOpen}
          onRequestClose={this.onModalClose}
          style={ModalStyle}
          >
          {this.form()}
          <button onClick={this.onModalClose}>back</button>
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

export default LargeHeader;

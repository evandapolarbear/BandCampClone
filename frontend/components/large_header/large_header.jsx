import React from 'react';
import Modal from 'react-modal';

class LargeHeader extends React.Component {
  constuctor(props){
    super(props);
  }

  getInitalState(){
    return({modalOpen:false});
  }

  __handClick(){
    this.setState({modalOpen: true});
  }

  render(){
    return(
      <div>
        <button onClick={this.props.logout()}>Log Out</button>
        <button onClick={this.__handleClick} >Log In</button>


        <Modal
          isOpen={this.state.modalOpen}>
          ...content
        </Modal>
      </div>
    );
  }
}

export default LargeHeader;

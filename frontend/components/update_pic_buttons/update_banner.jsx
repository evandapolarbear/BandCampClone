import React from 'react';

class UploadBanner extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      showForm: false,
      value: 'New Image URL'
    };

    this.toggleForm = this.toggleForm.bind(this);
    this.updateForm = this.updateForm.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  toggleForm(){
    if(this.state.showForm === false) {
      this.setState({showForm: true});
    } else {
      this.setState({showForm: false});
    }
  }

  update(field){
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  handleSubmit(){
    this.props.updateBanner(this.state.value);
  }

  updateForm(){
    if (this.state.showForm === true) {
        return (
          <form onSubmit={this.handleSubmit}>
            <input type='text'
              value={this.state.value}
              onChange={this.update('value')}></input>
            <br/>
            <button type="submit">Submit</button>
          </form>
        );
    }
  }

  render() {
    return (
      <div>
        <button className="update-button" onClick={this.toggleForm}>Update Banner</button>

        {this.updateForm()}
      </div>
    );
  }
}

export default UploadBanner;

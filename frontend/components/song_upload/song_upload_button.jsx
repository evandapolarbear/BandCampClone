import React from 'react';

class SongUploadButton extends React.Component {
  constructor(props){
    super(props);

    this.uploadToCloudinary = this.uploadToCloudinary.bind(this);
  }

  getTitle(){

  }

  uploadToCloudinary(e){
    e.preventDefault();
    const that = this;
    cloudinary.openUploadWidget(window.CLOUDINARY_OPTIONS, (errors, results) => {
      if(!errors) {
        let title = results[0].original_filename;
        let url = results[0].secure_url;
        debugger;
        that.props.uploadSongToRails(title, url, that.props.currentAristId);
      }
    });
  }

  render () {
    return (
      <div className="upload-form">
        <button onClick={this.uploadToCloudinary}>Upload A Song</button>
      </div>
    );
  }
}

export default SongUploadButton;

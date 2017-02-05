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
        const payload = {
          title: results[0].original_filename,
          url: results[0].secure_url,
          id: that.props.currentArtistId
        };

        that.props.uploadSongToRails(payload);
      }
    });
  }

  render () {
    return (
      <div className="upload-form">
        <button className="update-button" onClick={this.uploadToCloudinary}>Upload A Song</button>
      </div>
    );
  }
}

export default SongUploadButton;

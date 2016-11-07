import React from 'react';

class SongUploadButton extends React.Component {
  constructor(props){
    super(props);

    this.uploadToCloudinary = this.uploadToCloudinary.bind(this);
  }

  getTitle(){
    console.log('FIX ME');
    // get title from user and artistId from currentArtist
  }

  uploadToCloudinary(e){
    e.preventDefault();
    const that = this;
    cloudinary.openUploadWidget(window.CLOUDINARY_OPTIONS, (errors, results) => {
      debugger;
      if (!errors) {
        this.props.uploadSongToRails(that.props.title, results[0].secure_url, that.props.artistId);
      }
    });
  }

  render () {
    return (
      <div className="upload-form">
        <button onClick={this.uploadToCloudinary}>Attach Song File</button>
      </div>
    );
  }
}

export default SongUploadButton;

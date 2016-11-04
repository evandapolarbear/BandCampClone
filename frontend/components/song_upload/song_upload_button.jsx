import React from 'react';

class SongUploadButton extends React.Component {
  constructor(props){
    super(props);
  }

  getTitle(){
    console.log('FIX ME');
    // get title from user and artistId from currentArtist
  }

  uploadToCloudinary(e){
    e.preventDefault();
    cloudinary.openUploadWidget(CLOUDINARY_OPTIONS, (errors, results) => {
      if (!errors) {
        this.props.uploadUrl(results[0]);
      }
    });
  }

  render () {
    return (
      <div className="upload-form">
        <button onClick={this.uploadToCloudinary}>Upload Song</button>
      </div>
    );
  }
}

export default SongUploadButton;

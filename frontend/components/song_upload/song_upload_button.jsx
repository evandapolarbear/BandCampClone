import React from 'react';

class SongUploadButton extends React.Component {
  constructor(props){
    super(props);
  }

  upload(e){
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
        <button onClick={this.upload}>Upload Song</button>
      </div>
    );
  }
}

export default SongUploadButton;

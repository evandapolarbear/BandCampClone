import React from 'react';

export const SongListing = ({song, loadSong, artist}) =>(
  <li className='song-listing'>
    <p onClick={() => loadSong({song:song, artist:artist})}>{song.title}</p>

    <div className='icons'>
      <i className='fa fa-cloud-download icon'></i>
      <i className='fa fa-play icon' onClick={() => loadSong({song:song, artist:artist})}></i>
    </div>
  </li>
);

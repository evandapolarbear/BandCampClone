import React from 'react';

export const SongListing = ({song, loadSong, artist}) =>(
  <li className='song-listing'>
    <p onClick={() => loadSong({song:song, artist:artist})}>{song.title}</p>

    <div className='icons'>
      <a href={song.url} download={song.title}>
        <i className='fa fa-cloud-download icon'></i>
      </a>
      <i className='fa fa-play icon' onClick={() => loadSong({song:song, artist:artist})}></i>
    </div>
  </li>
);

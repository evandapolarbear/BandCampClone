import React from 'react';

export const SongListing = ({song, selectSong}) => (
  <li>
    {song.title}
    <button onClick={() => selectSong(song.url)}>play</button>
  </li>
);

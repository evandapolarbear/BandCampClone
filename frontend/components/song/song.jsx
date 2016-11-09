import React from 'react';

export const SongListing = ({song, loadSong}) => (
  <li>
    {song.title}
    <button onClick={() => loadSong(song.url)}>play</button>
  </li>
);

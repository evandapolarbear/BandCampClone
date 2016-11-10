import React from 'react';

export const SongListing = ({song, loadSong, artist}) =>(
  <li>
    {song.title}
    <button onClick={() => loadSong({song:song, artist:artist})}>play</button>
  </li>
);

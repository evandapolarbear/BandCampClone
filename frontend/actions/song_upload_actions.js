export const RECEIVE_SONGS = 'RECEIVE_SONGS';
export const UPLOAD_SONG = 'UPLOAD_SONG';
export const FETCH_ALL_SONGS = FETCH_ALL_SONGS ;

export const receiveSongs = songs => ({
  type: RECEIVE_SONGS,
  songs
});

export const uploadUrl = song => ({
  type: UPLOAD_SONG,
  song
});

export const fetchAllSongs = () => ({
  type: FETCH_ALL_SONGS
});

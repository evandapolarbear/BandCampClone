export const RECEIVE_SONGS = 'RECEIVE_SONGS';
export const UPLOAD_SONG = 'UPLOAD_SONG';
export const FETCH_ALL_SONGS = 'FETCH_ALL_SONGS';

export const receiveSongs = songs => ({
  type: RECEIVE_SONGS,
  songs
});

export const uploadSongToRails = (title, url, artistId) => ({
  type: UPLOAD_SONG,
  song: {title: title,
         url: url,
         artist_id: artistId}
});

export const fetchAllSongs = id => ({
  type: FETCH_ALL_SONGS,
  id
});

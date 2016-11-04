export const RECEIVE_SONG_URL = 'RECEIVE_SONG_URL';
export const UPLOAD_URL = 'UPLOAD_URL';

export const receiveSongUrl = songInfo => ({
  type: RECEIVE_SONG_URL,
  songInfo
});

export const uploadUrl = (url, currentArtist) => ({
  type: UPLOAD_URL,
  url,
  currentArist
});

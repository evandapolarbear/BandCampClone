export const FETCH_ARTIST = 'FETCH_ARTIST';
export const RECEIVE_ARTIST = 'RECEIVE_ARTIST';

export const fetchArtist = id => ({
  type: FETCH_ARTIST,
  id
});

export const receiveArtist = artist => ({
  type:RECEIVE_ARTIST,
  artist
});

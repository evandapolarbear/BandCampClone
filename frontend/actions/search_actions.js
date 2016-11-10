export const FETCH_ARTIST = 'FETCH_ARTIST';
export const RECEIVE_ARTIST = 'RECEIVE_ARTIST';
export const RECEIVE_ARTISTS = 'RECEIVE_ARTISTS';
export const SEARCH_ARTISTS = 'SEARCH_ARTISTS';
export const CLEAR_SEARCH = 'CLEAR_SEARCH';


export const fetchArtist = id => ({
  type: FETCH_ARTIST,
  id
});

export const receiveArtist = artist => ({
  type:RECEIVE_ARTIST,
  artist
});

export const receiveArtists = artists => ({
  type: RECEIVE_ARTISTS,
  artists
});

export const searchArtists = string => ({
  type: SEARCH_ARTISTS,
  string
});

export const clearSearch = () => ({
  type: CLEAR_SEARCH,
});

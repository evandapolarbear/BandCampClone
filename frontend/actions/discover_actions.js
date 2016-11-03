export const CHANGE_GENRE = 'CHANGE_GENRE';
export const SELECT_SONG = 'SELECT_SONG';
export const RECEIVE_GENRE = 'RECEIVE_GENRE'

export const changeGenre = genre => ({
  type: CHANGE_GENRE,
  genre
});

export const selectSong = song =>  ({
  type: SELECT_SONG,
  song
});

export const receiveGenre = genre => ({
  type: RECEIVE_GENRE,
  genre
})

export const

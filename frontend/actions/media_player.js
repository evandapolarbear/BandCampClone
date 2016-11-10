export const LOAD_SONG = 'LOAD_SONG';

export const loadSong = payload => ({
  type: LOAD_SONG,
  song: payload.song,
  artist: payload.artist
});

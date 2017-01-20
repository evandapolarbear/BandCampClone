export const LOAD_SONG = 'LOAD_SONG';

export const loadSong = payload => {
  console.log("song fired");
  return(
    {
      type: LOAD_SONG,
      song: payload.song,
      artist: payload.artist
    }
  );
};

export const uploadSong = (atitle, aurl, artistId, success, error)=> {
  $.ajax({
    method: "POST",
    url: 'api/songs',
    data: {song: {title: atitle, url: aurl, artist_id: artistId}},
    success,
    error
  });
};

export const fetchAllSongs = (id, success, error)=> {
  $.ajax({
    method: "GET",
    url: 'api/songs',
    data: {song: {artist_id: id}},
    success,
    error
  });
};

export const fetchArtist = (artistId, success, error) => {
  $.ajax({
    method: "GET",
    url: `api/artists/${artistId}`,
    success,
    error
  });
};

export const searchArtists = (string, success, error) => {
  $.ajax({
    method: 'GET',
    url: 'api/artists',
    data: {artist: {username: string}},
    success,
    error
  });
};

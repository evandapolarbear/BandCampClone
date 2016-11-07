export const fetchArtist = (artistId, success, error) => {
  $.ajax({
    method: "GET",
    url: 'api/artist',
    data: {arist: {id: artistId}},
    success,
    error
  });
};

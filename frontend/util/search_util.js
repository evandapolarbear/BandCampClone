export const fetchArtist = (artistId, success, error) => {
  $.ajax({
    method: "GET",
    url: `api/artists/${artistId}`,
    success,
    error
  });
};

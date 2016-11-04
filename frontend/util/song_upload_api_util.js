export const uploadSong = (data, success, error)=> {
  $.ajax({
    method: "POST",
    url: 'api/songs',
    data,
    success,
    error
  });
};

export const fetchAllSongs = (id, success, error)=> {
  $.ajax({
    method: "GET",
    url: 'api/songs',
    data: id,
    success,
    error
  });
};

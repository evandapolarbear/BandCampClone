export const updateBannerImage = (url, success, error) => {
  console.log(url);
  $.ajax({
    method:'PATCH',
    url: 'api/artist',
    data: {artist: {banner_url: url}},
    success,
    error
  });
};

export const updateProfileImage = (url, success, error) => {
  console.log(url);
  $.ajax({
    method:'PATCH',
    url: 'api/artist',
    data: {artist: {image_url: url}},
    success,
    error
  });
};

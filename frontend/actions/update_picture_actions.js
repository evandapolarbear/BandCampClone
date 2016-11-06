export const UPDATE_BANNER_PICTURE = 'UPDATE_BANNER';
export const UPDATE_PROFILE_PICTURE = 'UPDATE_PROFILE_PICTURE';

export const updateBanner = url => ({
  type: UPDATE_BANNER_PICTURE,
  url
});

export const updateProfilePicture = url => ({
  type: UPDATE_PROFILE_PICTURE,
  url
});

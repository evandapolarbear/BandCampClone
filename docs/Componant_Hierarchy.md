#AuthFormContainer#
  - AuthForm

#SplashContainer#
  - BigHeader
     - Authform
  - Search
  - News
  - DiscoverContainer

#GenreBar#
  - Songs
  - MediaPlayer

#UploadContainer#
  - SmallHeaderContainer
  - SploadForm

#ArtistPageContainer#
  - SmallHeaderContainer
  - TopBanner
  - MediaPlayer
  - Blurb
  - SongContainer
    - Songs
    - DownloadButton

#Search#
  - SearchContainer
    - dropdown
    - fullpage

#Routes#
Path               |  Componant
------------------ | -----------
:song-id           |  Discover container
/sign-up           |  AuthFormContainer
/sign-in           |  AuthFormContainer
/upload            |  UploadContainer
/:artistId         |  ArtistPageController
/:ArtistId/:songId |  SongContainer
/?sometext         |  SearchContainer
/?search/results   |  SearchContainer/full page

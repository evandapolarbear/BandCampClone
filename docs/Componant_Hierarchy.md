#AuthFormContainer#
*AuthForm*

#SplashContainer#
  - ##BigHeader##
     - Authform
 *Search
*News
*DiscoverContainer*

#GenreBar#
  - Songs
  - MediaPlayer

#UploadContainer#
  - SmallHeaderContainer
  - SploadForm

#BandPageContainer#
*SmallHeaderContainer
*TopBanner
*MediaPlayer
*Blurb
*SongContainer
 *Songs
 *DownloadButton

/ --- Splash Container
/:song-id --- Discover container
/sign-up --- AuthFormContainer
/sign-in --- AuthFormContainer
/upload --- UploadContainer
/:bandId --- BandPageController
/:bandId/:songId --- SongContainer

class AppRoutePath {
  final bool isSplashPage;

  AppRoutePath.splash() : isSplashPage = true;
  AppRoutePath.home() : isSplashPage = false;
  AppRoutePath.rooms() : isSplashPage = false;
  AppRoutePath.account() : isSplashPage = false;


}

class AppRoutePath {
  final String path;

  const AppRoutePath._(this.path);

  static const splash = AppRoutePath._('/splash');
  static const home = AppRoutePath._('/home');
  static const room = AppRoutePath._('/room');
  static const account = AppRoutePath._('/account');
  static const booking = AppRoutePath._('/booking');

  bool get isSplashScreen => path == '/splash';
  bool get isHomeScreen => path == '/home';
  bool get isRoomScreen => path == '/room';
  bool get isAccountScreen => path == '/account';
  bool get isBookingScreen => path == '/booking';
}

import 'package:flutter/material.dart';
import 'package:hotel_room_booking_app/app/routes/app_route_path.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    // Parse the route path and return the appropriate AppRoutePath
    final uri = Uri.parse(routeInformation.location ?? '/');
    switch (uri.path) {
      case '/splash':
        return AppRoutePath.splash;
      case '/home':
        return AppRoutePath.home;
      case '/room':
        return AppRoutePath.room;
      case '/account':
        return AppRoutePath.account;
      case '/booking':
        return AppRoutePath.booking;
      default:
        return AppRoutePath.home; // Default to Home page
    }
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) {
    // Use Uri.parse() to create the Uri and then extract the path to pass as location
    Uri uri;
    if (configuration.isSplashScreen) {
      uri = Uri.parse('/splash');
    } else if (configuration.isHomeScreen) {
      uri = Uri.parse('/home');
    } else if (configuration.isRoomScreen) {
      uri = Uri.parse('/room');
    } else if (configuration.isAccountScreen) {
      uri = Uri.parse('/account');
    } else if (configuration.isBookingScreen) {
      uri = Uri.parse('/booking');
    } else {
      uri = Uri.parse('/home'); // Default fallback
    }

    return RouteInformation(location: uri.path);
  }
}

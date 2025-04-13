import 'package:flutter/material.dart';
import 'package:hotel_room_booking_app/app/routes/app_route_path.dart';

class AppRouteInformationParser extends RouteInformationParser<AppRoutePath> {
  @override
  Future<AppRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    return AppRoutePath.splash(); // Start at splash by default
  }

  @override
  RouteInformation? restoreRouteInformation(AppRoutePath configuration) {
    if (configuration.isSplashPage) {
      return RouteInformation(location: '/splash');
    } else {
      return RouteInformation(location: '/home');
    }
  }
}

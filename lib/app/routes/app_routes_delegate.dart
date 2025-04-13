import 'package:flutter/material.dart';
import 'package:hotel_room_booking_app/app/routes/app_route_path.dart';
import 'package:hotel_room_booking_app/features/splash_screen.dart';

class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  bool _showSplash = true;

  AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>() {
    // Simulate splash delay
    Future.delayed(const Duration(seconds: 3), () {
      _showSplash = false;
      notifyListeners();
    });
  }

  @override
  AppRoutePath get currentConfiguration =>
      _showSplash ? AppRoutePath.splash() : AppRoutePath.home();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        if (_showSplash)
          MaterialPage(child: SplashScreen())
        else
          const MaterialPage(child: SplashScreen()),
      ],
      onPopPage: (route, result) => route.didPop(result),
    );
  }

  @override
  Future<void> setNewRoutePath(AppRoutePath configuration) async {}
}

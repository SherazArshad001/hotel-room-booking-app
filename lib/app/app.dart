import 'package:flutter/material.dart';
import 'package:hotel_room_booking_app/app/routes/app_route_information_parser.dart';
import 'package:hotel_room_booking_app/app/routes/app_routes_delegate.dart';
import 'package:hotel_room_booking_app/core/theme/app_theme.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final AppRouterDelegate _routerDelegate;
  late final AppRouteInformationParser _routeInformationParser;

  @override
  void initState() {
    super.initState();
    _routerDelegate = AppRouterDelegate();
    _routeInformationParser = AppRouteInformationParser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigator 2.0 App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, 
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }
}


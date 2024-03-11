
import 'package:flutter/material.dart';
import 'package:unipool/pages/pooling/pool/lib/feature/home/presentation/home_screen.dart';

import '../../../../../../screens/navigation_bar.dart';
import '../../feature/city_booking/presentation/city_booking_screen1.dart';
import '../../feature/city_booking/presentation/city_booking_screen2.dart';
import '../../feature/city_detail/presentation/city_detail_screen.dart';
import '../../ticket generated/ticket.dart';
import 'app_route_name.dart';


class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.home:
        return MaterialPageRoute(
          builder: (_) => const PoolingHome(),
          settings: settings,
        );

      case AppRouteName.cityDetail:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const cityDetailScreen(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.cityBooking1:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const cityBookingScreen1(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.cityBooking2:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const cityBookingScreen2(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case AppRouteName.tickett:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const ticket(),
          transitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (_, animation, __, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }
    return null;
  }
}

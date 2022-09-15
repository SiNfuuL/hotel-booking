import 'package:booking_hotel/presentation/screens/shared/home_layout/home_layout_screen.dart';
import 'package:flutter/material.dart';

import 'app_router_names.dart';


class AppRouter {

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case AppRouterNames.rHomeLayoutRoute:
        return MaterialPageRoute(
            builder: (_) => const HomeLayout());
      default:
        return null;
    }
  }
}
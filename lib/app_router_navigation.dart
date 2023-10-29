import 'package:flutter/material.dart';
import 'package:spattia/view/constants/route.dart';
import 'package:spattia/view/screens/bookmarks_screen.dart';
import 'package:spattia/view/screens/home.dart';


class AppRouterNavigation {
  Route? routerNavigation(RouteSettings settings) {
    switch (settings.name) {
      case AppRoute.homeRoute:
        return MaterialPageRoute(
          // builder: (_) => const HomePage(),
          builder: (_) => const BookmarksScreen(),
        );
      // we will add here second route screen etc.
      /*
      case "anotherRoute":
        return MaterialPageRoute(builder: (_) => AnotherPage());
      */
      default:
        return null;
    }
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class RouterObserver extends AutoRouteObserver {

  @override
  void didPush(Route route, Route? previousRoute) {
    print("Go to ${route.settings.name} from ${previousRoute?.settings.name}");
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    print("Go to ${route.name} from ${previousRoute?.name}");
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    print("Go again to ${route.name} from ${previousRoute.name}");
  }
}
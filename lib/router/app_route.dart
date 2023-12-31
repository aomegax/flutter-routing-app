import 'package:auto_route/auto_route.dart';
import 'package:routing_app/router/app_route.gr.dart';
import 'package:routing_app/router/auth_guard.dart';

import '../cubits/auth_cubit.dart';


@AutoRouterConfig(
  replaceInRouteName: 'Page,Route', // to indicate that pages and routes will have page and route suffixes
)
class AppRouter extends $AppRouter {

  final AuthCubit _authCubit;

  AppRouter(this._authCubit);

  @override
  RouteType get defaultRouteType => const RouteType.material();

  // declare here pages to be routed
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: AuthRoute.page, keepHistory: false),
    AutoRoute(page: HomeRoute.page,
      children: [
        AutoRoute(page: ContentRoute.page)
      ],
      guards: [
        AuthGuard(_authCubit),
      ],
      initial: true,
    ),
  ];

}

// launch the command:
// dart run build_runner watch --delete-conflicting-outputs
// so each code change to app_route file will be automatically generated by auto_route
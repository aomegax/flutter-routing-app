// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:routing_app/pages/auth_page.dart' as _i1;
import 'package:routing_app/pages/content_page.dart' as _i2;
import 'package:routing_app/pages/home_page.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      final args = routeData.argsAs<AuthRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AuthPage(
          key: args.key,
          onResult: args.onResult,
        ),
      );
    },
    ContentRoute.name: (routeData) {
      final args = routeData.argsAs<ContentRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.WrappedRoute(
            child: _i2.ContentPage(
          args.content,
          key: args.key,
        )),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i4.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i5.Key? key,
    required dynamic Function(bool) onResult,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          AuthRoute.name,
          args: AuthRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i4.PageInfo<AuthRouteArgs> page =
      _i4.PageInfo<AuthRouteArgs>(name);
}

class AuthRouteArgs {
  const AuthRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i5.Key? key;

  final dynamic Function(bool) onResult;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i2.ContentPage]
class ContentRoute extends _i4.PageRouteInfo<ContentRouteArgs> {
  ContentRoute({
    required String content,
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ContentRoute.name,
          args: ContentRouteArgs(
            content: content,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ContentRoute';

  static const _i4.PageInfo<ContentRouteArgs> page =
      _i4.PageInfo<ContentRouteArgs>(name);
}

class ContentRouteArgs {
  const ContentRouteArgs({
    required this.content,
    this.key,
  });

  final String content;

  final _i5.Key? key;

  @override
  String toString() {
    return 'ContentRouteArgs{content: $content, key: $key}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

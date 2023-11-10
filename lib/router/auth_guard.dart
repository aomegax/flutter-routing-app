import 'package:auto_route/auto_route.dart';
import 'package:routing_app/cubits/auth_cubit.dart';
import 'package:routing_app/router/app_route.gr.dart';

class AuthGuard extends AutoRouteGuard {

  final AuthCubit _authCubit;

  AuthGuard(this._authCubit);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // if authenticated then go the selected page
    // otherwise go to auth page
    if (_authCubit.state) {
      resolver.next(true);
    }
    else {
      router.push(AuthRoute(onResult: (success) {
        resolver.next(success);
      }));
    }
  }

}
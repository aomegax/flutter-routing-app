import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing_app/cubits/auth_cubit.dart';
import 'package:routing_app/router/app_route.dart';
import 'package:routing_app/router/router_observer.dart';


class App extends StatefulWidget {

  const App({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppState();

}


class _AppState extends State<App> {
  // declare instance of autoRouter
  AppRouter? _appRouter;

  // declare authCubit
  final _authCubit = AuthCubit();

  @override
  void initState() {
    _appRouter = AppRouter(_authCubit);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _authCubit,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerConfig: _appRouter!.config(
          navigatorObservers: () => [RouterObserver()]
        ), // hook up router to MaterialApp
      )
    );
  }

  // dispose override is necessary to ensure cubit is closed properly
  @override
  void dispose() async {
    await _authCubit.close();
    super.dispose();
  }
}
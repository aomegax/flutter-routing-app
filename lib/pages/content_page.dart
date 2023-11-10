import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routing_app/cubits/counter_cubit.dart';

@RoutePage()
class ContentPage extends StatelessWidget with AutoRouteWrapper {

  // input param
  final String content;

  const ContentPage(this.content, {Key? key}) : super (key: key);

  // it is executed before build
  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
    create: (_) => CounterCubit(),
    child: this, // "this" is the content of build
  );

  @override
  Widget build(BuildContext context) => Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () => context.read<CounterCubit>().increment(),
      child: const Icon(Icons.add),
    ),
    appBar: AppBar(
      title: Text(content)
    ),
    body: Center(
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Text(count.toString())
      )
    ),
  );

}
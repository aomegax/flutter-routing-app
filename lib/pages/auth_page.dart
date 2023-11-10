import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:routing_app/cubits/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthPage extends StatefulWidget {

  // callback called on authCubit state change
  final Function(bool) onResult;

  const AuthPage({Key? key, required this.onResult}) : super(key: key);

  @override
  State<StatefulWidget> createState()  => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  // controller to extract password and make check
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => BlocListener<AuthCubit, bool>(
    listener: (context, authenticated) {
      if (authenticated) {
        widget.onResult(authenticated);
      }
    },
    child: Scaffold(
      appBar: AppBar(title: const Text("Authentication"),),
      body: Column(
        children: [
          _passwordField(),
          _confirmButton(context)
        ],
      ),
    )

  );


  Widget _passwordField() => TextField(
    controller: _passwordController,
    decoration: const InputDecoration(hintText: "Password"),
    obscureText: true,
  );

  Widget _confirmButton(BuildContext context) => ElevatedButton(
    onPressed: () {
      // context.router.push(const HomeRoute());
      context.read<AuthCubit>().authenticate(_passwordController.text);
    },
    child: const Text("Confirm"),
  );
}
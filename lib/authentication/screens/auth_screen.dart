import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/authentication/bloc/login_bloc.dart';
import 'package:food_app/authentication/bloc/login_repository.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/widgets/facebook_button.dart';
import '../widgets/login_fields.dart';
import '../widgets/login_logo.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth-screen';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WELCOME',
            textAlign: TextAlign.center,
          ),
        ),
        body: BlocProvider(
  create: (context) => LoginBloc(
    loginRep: context.read<LoginRepository>(),
  ),
  child: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const LoginLogo(),
                // ignore: prefer_const_constructors
                const SizedBox(
                  height: 30,
                ),
                LoginFields(),
                const FacebookButton(),
              ],
            ),
          ),
        ),
),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/authentication/bloc/login_bloc.dart';
import 'package:food_app/authentication/bloc/form_submission_status.dart';
import 'package:food_app/authentication/bloc/login_bloc.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/authentication/bloc/login_bloc.dart';
import 'login_fields.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return  ElevatedButton(
          child: Text('LOGIN', style: TextStyle(fontSize: 16)),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)),
            onPrimary: Colors.white,
            primary: Colors.red.shade900,
          ),
          onPressed: () {
           state.IsValidUsername ? Navigator.of(context).pushNamed(HomeScreen.routeName): null;
          },
        );
      },
    );
  }
}
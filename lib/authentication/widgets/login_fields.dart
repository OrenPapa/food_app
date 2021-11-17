import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/authentication/bloc/login_bloc.dart';


import 'login_button.dart';

class LoginFields extends StatefulWidget {
 static final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  Container LoginText(text) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(color: Colors.grey.shade400),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 0.55,
        child: Form(
          key: LoginFields.formKey,
            child: Column(
          children: <Widget>[
            LoginText('Enter Adress'),
            const SizedBox(
              height: 5,
            ),
            UsernameField(),
            const SizedBox(
              height: 30,
            ),
            LoginText('Enter Password'),
            const SizedBox(
              height: 5,
            ),
            PasswordField(),
            const SizedBox(
              height: 5,
            ),
            ForgotPassword(),
            const SizedBox(
              height: 40,
            ),
            LoginButton(),
            const SizedBox(
              height: 5,
            ),
            SingupButton(),
          ],
        )));
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
  builder: (context, state) {
    return TextFormField(
      obscureText: true,
      validator: (value) => state.IsValidPassword ? null : 'Error',
      onChanged: (value) => context
          .read<LoginBloc>()
          .add(LoginPasswordChanged(password: value)),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red.shade700,
          ),
        ),
      ),);
  },
);
  }
}

class UsernameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          validator: (value) => state.IsValidUsername ? null : 'Error',
          onChanged: (value) => context
              .read<LoginBloc>()
              .add(LoginUsernameChanged(username: value)),
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red.shade700,
              ),
            ),
          ),
        );
      },
    );
  }
}

Row SingupButton() {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
    Text("Do you have an account? ",
        style: TextStyle(fontSize: 16, color: Colors.grey.shade400)),
    GestureDetector(
      onTap: () {},
      child: Text(
        "Sing up here",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
      ),
    ),
  ]);
}

Center ForgotPassword() {
  return Center(
      child: Text(
    'Forgotten your password?',
    style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
  ));
}

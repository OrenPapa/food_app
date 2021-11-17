part of 'login_bloc.dart';

@immutable
class LoginState {
  final String username;
  bool get IsValidUsername => username == 'test@example.com';

  final String password;
  bool get IsValidPassword => password.length > 4;

  final FormSubmissionStatus formStatus;

  LoginState({

     this.username = '' ,
     this.password = '' ,
    this.formStatus = const InitialFormStatus(),
  });

  LoginState copyWith({
    String ? username,
    String ? password,
    FormSubmissionStatus ? formStatus,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );

  }

}



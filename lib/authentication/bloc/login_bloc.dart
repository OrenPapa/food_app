import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/authentication/bloc/form_submission_status.dart';
import 'package:food_app/authentication/bloc/login_repository.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository ? loginRep;

  LoginBloc({this.loginRep}) : super(LoginState()) ;

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if(event is LoginUsernameChanged) {
      yield state.copyWith(username: event.username);
    }
    else if (event is LoginPasswordChanged) {
      yield state.copyWith(username: event.password);
    }
    else if (event is LoginSubmitted){
      yield state.copyWith(formStatus: FormSubmitting());

      try{
        await loginRep?.login();
         yield state.copyWith(formStatus: SubmissionSuccess());
      } catch(e) {
        yield state.copyWith(formStatus: SubmissioFailed(e as Exception));
      }
    }
    }

}


import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delline/screens/pass/password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  String log = 'admin';
  String pass = '12345';
  BuildContext context;
  LoginBloc(this.context) : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if(event is ButtonPressedEvent){
      yield* _buttonPressed(event);
    }
  }

  Stream<LoginState> _buttonPressed(ButtonPressedEvent event) async* {
    if(event.passController.text == pass && event.logController.text == log){
      Navigator.push(context, MaterialPageRoute(builder:(context)=> PasswordScreen.screen()));
    }else{
      event.passController.clear();
      event.logController.clear();
    }
  }
}


import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  BuildContext context;
  LoginBloc({required this.context}) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) {
    });
  }
}

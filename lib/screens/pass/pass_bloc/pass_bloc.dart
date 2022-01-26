import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../../main_navigation.dart';

part 'pass_event.dart';
part 'pass_state.dart';

class PassBloc extends Bloc<PassEvent, PassState> {
  BuildContext context;
  PassBloc(this.context) : super(PassInitial());
  @override
  Stream<PassState> mapEventToState(PassEvent event) async* {
    if(event is PassCompileEvent){
      yield* _passEventState(event);
    }
  }
  Stream<PassState> _passEventState(PassCompileEvent event) async* {
    String truePass = '0000';
    if(event.passController.text == truePass){
      Navigator.pushNamed(context, MainNavigationRouteNames.home);
    }else{
      event.passController.clear();
    }
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delline/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      Navigator.push(context, MaterialPageRoute(builder:(context)=> const HomeScreen()));
    }else{
      event.passController.clear();
    }
  }
}

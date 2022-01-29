import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delline/data/brends_model.dart';
import 'package:delline/screens/new_category/category_page.dart';
import 'package:flutter/material.dart';

part 'brends_event.dart';

part 'brends_state.dart';

class BrendsBloc extends Bloc<BrendsEvent, BrendsState> {
  final BuildContext context;

  BrendsBloc(this.context) : super(BrendsInitial());


  @override
  Stream<BrendsState> mapEventToState(BrendsEvent event) async*{
    if (event is LaunchEvent) {
      yield* _eventLaunch(event);
    } else if (event is ItemPressed) {
      yield* _eventItemPressed(event);
    }
  }

  Stream<BrendsState> _eventLaunch(LaunchEvent event) async* {
    List _list;
    yield LoadingState();
    _list = Brends.brandMap.keys.toList();
    if (_list.isNotEmpty) {
      yield ListState(brendList: _list);
    } else {
      yield FailState(message: "Ma'lumot topilmadi!");
    }
  }
  Stream<BrendsState> _eventItemPressed(ItemPressed event) async* {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CategoryPage(title: event.title),
      ),
    );
  }
}

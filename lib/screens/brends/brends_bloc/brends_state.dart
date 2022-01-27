part of 'brends_bloc.dart';

@immutable
abstract class BrendsState {}

class BrendsInitial extends BrendsState {}

class LoadingState extends BrendsState {}

class ListState extends BrendsState {
  final List brendList;

  ListState({required this.brendList});

}

class FailState extends BrendsState {
  final String message;

  FailState({required this.message});
}

part of 'brends_bloc.dart';

@immutable
abstract class BrendsEvent {}

class LaunchEvent extends BrendsEvent {}

class ItemPressed extends BrendsEvent {
  final String title;

  ItemPressed({required this.title});
}

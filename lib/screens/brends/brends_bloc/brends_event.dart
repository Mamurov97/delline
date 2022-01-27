part of 'brends_bloc.dart';

@immutable
abstract class BrendsEvent {}

class LaunchEvent extends BrendsEvent {}

class ItemPressed extends BrendsEvent {
  final int index;

  ItemPressed({required this.index});
}

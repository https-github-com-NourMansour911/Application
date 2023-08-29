part of 'p_tracker_cubit.dart';

@immutable
sealed class PTrackerState {}

final class PTrackerInitial extends PTrackerState {}

final class PTrackerFinish extends PTrackerState {}

final class PTrackeractive extends PTrackerState {}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(StateStreamableSource<dynamic> bloc, Change change) {
    debugPrint('Change = ${change.toString()}');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('Close = ${bloc.toString()}');
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('Create = ${bloc.toString()}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}

import 'package:bloc/bloc.dart';

class CalculatorObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    //debugPrint("onEvent => bloc: $bloc ::: event: $event");
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    //debugPrint("onError => bloc: $bloc ::: error: $error ::: stackTrace: $stackTrace");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    //debugPrint("onChange => bloc: $bloc ::: change: $change");
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    //debugPrint("onTransition => bloc: $bloc ::: transition: $transition");
  }
}
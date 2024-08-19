import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      log('${bloc.runtimeType} $change');
    }

    @override
    void onTransition(Bloc bloc, Transition transition) {
      super.onTransition(bloc, transition);
      // TODO: implement onChange
    }
  }
}

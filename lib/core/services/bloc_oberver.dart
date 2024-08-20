import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) {
      //log('${bloc.state} change is ${change}');
      log('${bloc.runtimeType} $change');
    }

    super.onChange(bloc, change);
  }
}

import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruit_hub/core/routing/app_router.dart';
import 'package:fruit_hub/core/utils/custom_scroll_behavior.dart';

import 'core/services/bloc_oberver.dart';
import 'core/services/cache_helper.dart';
import 'core/services/service_locator.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
  Bloc.observer = MyBlocObserver();

  await CacheHelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      locale: Locale('ar'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

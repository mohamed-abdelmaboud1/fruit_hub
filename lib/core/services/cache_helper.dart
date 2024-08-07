import 'package:fruit_hub/core/constants/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  static init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static set skipOnboarding(bool value) =>
      _prefs.setBool(Keys.skipOnboarding, value);
  static bool get skipOnboarding =>
      _prefs.getBool(Keys.skipOnboarding) ?? false;

  static set isLogin(bool value) => _prefs.setBool(Keys.isLoggedIn, value);

  static bool get isLogin => _prefs.getBool(Keys.isLoggedIn) ?? false;
}

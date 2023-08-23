import 'package:shared_preferences/shared_preferences.dart';

class ThemeCacheHelper {
  // function responsible to cache the index of the theme the user chooses
  Future<void> cacheThemeIndex(int themeIndex) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt('THEME_INDEX', themeIndex);
  }

  // function responsible to get the cached index of the theme the user chooses
  Future<int> getCachedThemeIndex() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedThemeIndex = sharedPreferences.getInt('THEME_INDEX');
    if (cachedThemeIndex != null) {
      return cachedThemeIndex;
    } else {
      // return the default theme index which is the first theme in the enum (blue light)
      return 0;
    }
  }
}

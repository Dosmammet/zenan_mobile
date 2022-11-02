import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zenan_2/pages/splashscreen.dart';
import 'package:zenan_2/utils/themes.dart';
import 'package:zenan_2/utils/translations.dart';

GetStorage language = GetStorage();
GetStorage isDarkk = GetStorage();
String langweb = 'tk';
void checklangweb() async {
  SharedPreferences localStorage = await SharedPreferences.getInstance();
  var huhu = localStorage.getString('langweb');
  langweb = huhu != null ? huhu : 'tk';
}

void main() async {
  await GetStorage.init();
  //getThemeStatus();
  checklangweb();
  runApp(
    GetMaterialApp(
      theme: isDarkk.read('dark') == 'true'
          ? Themes().myDarkTheme
          : Themes().myLightTheme,
      initialRoute: '/splashscreen',
      translations: MyTranslations(),
      locale:
          Locale(language.read('lang') != null ? language.read('lang') : 'tk'),
      getPages: [
        GetPage(name: '/splashscreen', page: () => SplashPage()),
      ],
    ),
  );
}

import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'tk': {
          'Home': 'Baş sahypa',
          'all': 'Hemmesini gör',
        },
        'ru': {
          'Home': 'Главная страница',
          'all': 'Посмотреть все',
        },
      };
}

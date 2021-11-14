import 'package:get/get.dart';

class MainTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'circle': 'CIRCLE',
          'title': 'Hello World %s',
        },
        'en_US': {
          'circle': 'CIRCLE',
          'title': 'Hello World from US',
        },
        'pt': {
          'circle': 'CIRCLE',
          'title': 'Olá de Portugal',
        },
        'pt_BR': {
          'circle': 'CIRCLE',
          'title': 'Olá do Brasil',
        },
      };
}

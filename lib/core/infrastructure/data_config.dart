import 'package:flutter_dotenv/flutter_dotenv.dart';

class DataConfig {
  static const itemsPerPage = 5;

  static final String events = dotenv.get('Events', fallback: '');
  static final String expandDataAbout =
      dotenv.get('ExpandDataAbout', fallback: '');
}

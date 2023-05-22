import 'package:media_pencak_silat/enums.dart';

extension ParseToString on ItemCategory {
  String toShortString() {
    return toString().split('.').last;
  }
}

extension ParseToCapitalizedString on String {
  String toCapitalizedString() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';

class ColorsConstants {
  static Color whiteA7005e = fromHex('#5effffff');
  static Color red700 = fromHex('#d23c3c');
  static Color greenA200 = fromHex('#6cda9c');
  static Color black900 = fromHex('#000000');
  static Color gray700 = fromHex('#5f5177');
  static Color bluegray60014 = fromHex('#144d7179');
  static Color blue700 = fromHex('#2775ca');
  static Color whiteA70063 = fromHex('#63ffffff');
  static Color bluegray400 = fromHex('#8d849d');
  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

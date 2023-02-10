import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray400 = fromHex('#c4c4c4');

  static Color blueGray300 = fromHex('#9da7bb');

  static Color redA200 = fromHex('#ff5c5c');

  static Color black9003f = fromHex('#3f000000');

  static Color gray100 = fromHex('#f2f2f2');

  static Color black90033 = fromHex('#33000000');

  static Color yellow800 = fromHex('#f69b32');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blueGray700 = fromHex('#3c4d61');

  static Color blueGray900 = fromHex('#232f3e');

  static Color black90019 = fromHex('#19000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

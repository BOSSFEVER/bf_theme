import 'package:flutter/material.dart';

class BFColors {
  BFColors._noConstructor();

  static const disabled = Color(0xFF242424);
  static const background = Color(0xFF121212);
  static const widgetBackground = Color(0xFF202020);
  static const foreground = Color(0xFFFFFFFF);
}

class BFColorPack {
  const BFColorPack(this.background, this.hover, this.click);

  final Color background;
  final Color hover;
  final Color click;
}

class BFColorPacks {
  static const red = BFColorPack(
    Color(0xff8d0909),
    Color(0xffb02d2d),
    Color(0xffb24343),
  );

  static const berry = BFColorPack(
    Color(0xFF881045),
    Color(0xff9f2e5f),
    Color(0xffc25183),
  );

  static const pink = BFColorPack(
    Color(0xFF831082),
    Color(0xffa12fa0),
    Color(0xffb04cb0),
  );

  static const purple = BFColorPack(
    Color(0xFF5E209A),
    Color(0xff753aad),
    Color(0xff8853bb),
  );

  static const indigo = BFColorPack(
    Color(0xff32248c),
    Color(0xff4c3fa2),
    Color(0xff6256ab),
  );

  static const blue = BFColorPack(
    Color(0xFF1F5AAF),
    Color(0xff4277c0),
    Color(0xff6295dc),
  );

  static const cyan = BFColorPack(
    Color(0xFF128A8D),
    Color(0xff3aadb0),
    Color(0xff4ebec0),
  );

  static const jade = BFColorPack(
    Color(0xFF006E46),
    Color(0xff209167),
    Color(0xff3b9f7b),
  );

  static const green = BFColorPack(
    Color(0xFF287509),
    Color(0xff449326),
    Color(0xff5ea242),
  );

  static const lime = BFColorPack(
    Color(0xFF759402),
    Color(0xff8da91e),
    Color(0xff9cb739),
  );

  static const yellow = BFColorPack(
    Color(0xFFA19C03),
    Color(0xffc9c324),
    Color(0xffd9d342),
  );

  static const orange = BFColorPack(
    Color(0xFF9B6007),
    Color(0xffaf7723),
    Color(0xffc08c3f),
  );

  static const sunset = BFColorPack(
    Color(0xFF91360F),
    Color(0xffa9502a),
    Color(0xffb76644),
  );

  static const gray = BFColorPack(
    Color(0xFF444444),
    Color(0xff575757),
    Color(0xff696969),
  );

  static const black = BFColorPack(
    Color(0xFF171717),
    Color(0xff2e2e2e),
    Color(0xff454545),
  );

  static const steel = BFColorPack(
    Color(0xFF4E546C),
    Color(0xff60657a),
    Color(0xff717689),
  );

  static const ash = BFColorPack(
    Color(0xFF655E53),
    Color(0xff746e64),
    Color(0xff837e75),
  );

  static const brown = BFColorPack(
    Color(0xFF52310E),
    Color(0xff634626),
    Color(0xff745a3e),
  );
}

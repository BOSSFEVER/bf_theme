import 'package:flutter/material.dart';

import '../theme/bf_color.dart';

void empty() {}

class ColorData {
  const ColorData(this.name, this.colorPack, this.function);

  final BFColorPack colorPack;
  final String name;
  final void Function()? function;
}

const List<ColorData> colorDataList = [
  ColorData("Red", BFColorPack.red, empty),
  ColorData("Berry", BFColorPack.berry, empty),
  ColorData("Pink", BFColorPack.pink, empty),
  ColorData("Purple", BFColorPack.purple, empty),
  ColorData("Indigo", BFColorPack.indigo, empty),
  ColorData("Blue", BFColorPack.blue, empty),
  ColorData("Cyan", BFColorPack.cyan, empty),
  ColorData("Jade", BFColorPack.jade, empty),
  ColorData("Green", BFColorPack.green, empty),
  ColorData("Lime", BFColorPack.lime, empty),
  ColorData("Yellow", BFColorPack.yellow, empty),
  ColorData("Orange", BFColorPack.orange, empty),
  ColorData("Sunset", BFColorPack.sunset, empty),
  ColorData("Brown", BFColorPack.brown, empty),
  ColorData("Ash", BFColorPack.ash, empty),
  ColorData("Gray", BFColorPack.gray, empty),
  ColorData("Steel", BFColorPack.steel, empty),
  ColorData("Black", BFColorPack.black, empty),
  ColorData("Disabled", BFColorPack.black, null),
];

class IconColorData {
  const IconColorData(this.name, this.colorPack, this.icon, this.function);

  final BFColorPack colorPack;
  final String name;
  final void Function()? function;
  final IconData icon;
}

const List<IconColorData> iconColorDataList = [
  IconColorData("Accept", BFColorPack.green, Icons.check, empty),
  IconColorData("Cancel", BFColorPack.red, Icons.close, empty),
  IconColorData("Power", BFColorPack.yellow, Icons.electric_bolt, empty),
  IconColorData("Add", BFColorPack.blue, Icons.add, empty),
  IconColorData("Discard", BFColorPack.brown, Icons.delete, empty),
  IconColorData("Subscribe", BFColorPack.purple, Icons.notifications_active_outlined, empty),
  IconColorData("Refresh", BFColorPack.orange, Icons.cached, empty),
  IconColorData("Watch Later", BFColorPack.indigo, Icons.watch_later_outlined, empty),
  IconColorData("Favorite", BFColorPack.berry, Icons.favorite_border, empty),
  IconColorData("Disabled", BFColorPack.black, Icons.do_not_disturb_alt, null),
];

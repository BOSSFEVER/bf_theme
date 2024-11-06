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
  ColorData("Red", BFColorPacks.red, empty),
  ColorData("Berry", BFColorPacks.berry, empty),
  ColorData("Pink", BFColorPacks.pink, empty),
  ColorData("Purple", BFColorPacks.purple, empty),
  ColorData("Indigo", BFColorPacks.indigo, empty),
  ColorData("Blue", BFColorPacks.blue, empty),
  ColorData("Cyan", BFColorPacks.cyan, empty),
  ColorData("Jade", BFColorPacks.jade, empty),
  ColorData("Green", BFColorPacks.green, empty),
  ColorData("Lime", BFColorPacks.lime, empty),
  ColorData("Yellow", BFColorPacks.yellow, empty),
  ColorData("Orange", BFColorPacks.orange, empty),
  ColorData("Sunset", BFColorPacks.sunset, empty),
  ColorData("Brown", BFColorPacks.brown, empty),
  ColorData("Ash", BFColorPacks.ash, empty),
  ColorData("Gray", BFColorPacks.gray, empty),
  ColorData("Steel", BFColorPacks.steel, empty),
  ColorData("Black", BFColorPacks.black, empty),
  ColorData("Disabled", BFColorPacks.black, null),
];

class IconColorData {
  const IconColorData(this.name, this.colorPack, this.icon, this.function);

  final BFColorPack colorPack;
  final String name;
  final void Function()? function;
  final IconData icon;
}

const List<IconColorData> iconColorDataList = [
  IconColorData("Accept", BFColorPacks.green, Icons.check, empty),
  IconColorData("Cancel", BFColorPacks.red, Icons.close, empty),
  IconColorData("Power", BFColorPacks.yellow, Icons.electric_bolt, empty),
  IconColorData("Add", BFColorPacks.blue, Icons.add, empty),
  IconColorData("Discard", BFColorPacks.brown, Icons.delete, empty),
  IconColorData("Subscribe", BFColorPacks.purple, Icons.notifications_active_outlined, empty),
  IconColorData("Refresh", BFColorPacks.orange, Icons.cached, empty),
  IconColorData("Watch Later", BFColorPacks.indigo, Icons.watch_later_outlined, empty),
  IconColorData("Favorite", BFColorPacks.berry, Icons.favorite_border, empty),
  IconColorData("Disabled", BFColorPacks.black, Icons.do_not_disturb_alt, null),
];

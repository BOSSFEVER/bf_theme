import '../theme/bf_color.dart';

class ColorData {
  const ColorData(this.name, this.colorPack);

  final BFColorPack colorPack;
  final String name;
}

const List<ColorData> colorDataList = [
  ColorData("Red", BFColorPack.red),
  ColorData("Berry", BFColorPack.berry),
  ColorData("Pink", BFColorPack.pink),
  ColorData("Purple", BFColorPack.purple),
  ColorData("Indigo", BFColorPack.indigo),
  ColorData("Blue", BFColorPack.blue),
  ColorData("Cyan", BFColorPack.cyan),
  ColorData("Jade", BFColorPack.jade),
  ColorData("Green", BFColorPack.green),
  ColorData("Lime", BFColorPack.lime),
  ColorData("Yellow", BFColorPack.yellow),
  ColorData("Orange", BFColorPack.orange),
  ColorData("Sunset", BFColorPack.sunset),
  ColorData("Brown", BFColorPack.brown),
  ColorData("Ash", BFColorPack.ash),
  ColorData("Gray", BFColorPack.gray),
  ColorData("Steel", BFColorPack.steel),
  ColorData("Black", BFColorPack.black),
];

import 'dart:ui';
// to display common color variables
const appColor = Color(0xff2596be);
const appColor2 = Color(0xff005986);
hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF$hexColor";
  }
  return Color(int.parse(hexColor, radix: 16));
}

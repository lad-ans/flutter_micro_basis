import 'package:flutter/material.dart';

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double statusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;
double viewBottomInsets(BuildContext context) => MediaQuery.of(context).viewInsets.bottom;
final appBarHeight = AppBar().preferredSize.height;

bool isTablet(BuildContext context) => MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 750;

double kRespValue(BuildContext context, double value, double multiplier) => isTablet(context) ? (value * multiplier) : value;

Orientation _orientation(BuildContext context) => MediaQuery.of(context).orientation;

// Buttons
xSBtn(BuildContext context) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / 12
  : screenHeight(context) / 12;

sBtn(BuildContext context) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / 10
  : screenHeight(context) / 10;

btn(BuildContext context) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / 8
  : screenHeight(context) / 8;

lBtn(BuildContext context) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / 7
  : screenHeight(context) / 7;

xLBtn(BuildContext context) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / 5
  : screenHeight(context) / 5;

stomBtn(BuildContext context, double per) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / per
  : screenHeight(context) / per;

/// `SIZES`
dp4(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 100
    : screenHeight(context) / 100;
}

dp5(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 83
    : screenHeight(context) / 83;
}

dp6(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 68
    : screenHeight(context) / 68;
}

dp7(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 60
    : screenHeight(context) / 60;
}

dp8(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 51
    : screenHeight(context) / 51;
}

dp9(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 46
    : screenHeight(context) / 46;
}

dp10(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 41
    : screenHeight(context) / 41;
}

dp11(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 38
    : screenHeight(context) / 38;
}

dp12(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 35
    : screenHeight(context) / 35;
}

dp13(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 32
    : screenHeight(context) / 32;
}

dp14(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 30
    : screenHeight(context) / 30;
}

dp15(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 27.5
    : screenHeight(context) / 27.5;
}

dp16(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 26
    : screenHeight(context) / 26;
}

dp17(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 24.5
    : screenHeight(context) / 24.5;
}

dp18(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 23
    : screenHeight(context) / 23;
}

dp19(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 22
    : screenHeight(context) / 22;
}

dp20(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 21
    : screenHeight(context) / 21;
}

dp21(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 20
    : screenHeight(context) / 20;
}

dp22(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 19
    : screenHeight(context) / 19;
}

dp23(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 18
    : screenHeight(context) / 18;
}

dp24(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 17
    : screenHeight(context) / 17;
}

dp25(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 16.5
    : screenHeight(context) / 16.5;
}

dp26(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 16
    : screenHeight(context) / 16;
}

dp27(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 15.3
    : screenHeight(context) / 15.3;
}

dp28(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 14.8
    : screenHeight(context) / 14.8;
}

dp29(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 14.3
    : screenHeight(context) / 14.3;
}

dp30(BuildContext context) {
  return _orientation(context) == Orientation.portrait
    ? screenWidth(context) / 13.8
    : screenHeight(context) / 13.8;
}

dp34(BuildContext context) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / 10
  : screenHeight(context) / 11;

dp38(BuildContext context) => _orientation(context) == Orientation.portrait
  ? screenWidth(context) / 10
  : screenHeight(context) / 10;

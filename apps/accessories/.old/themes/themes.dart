import 'package:flutter/material.dart';

ThemeData omniLightTheme() => ThemeData.light().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.red[100],
    appBarTheme: AppBarTheme(color: Colors.red[100]),
    accentColor: Colors.red[400],
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.red[400], fontSize: 20),
      bodyText1: TextStyle(
          color: Colors.red[400], fontSize: 15, fontWeight: FontWeight.bold),
      headline6: TextStyle(color: Colors.red[400], fontSize: 30),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(getLightColor),
            foregroundColor:
                MaterialStateColor.resolveWith(getLightOverlayColor),
            shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()))),
    dialogBackgroundColor: Colors.red[100]);
ThemeData omniDarkTheme() => ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.blueGrey[900],
    appBarTheme: AppBarTheme(color: Colors.red[900]),
    accentColor: Colors.red[400],
    textTheme: TextTheme(
      headline6: TextStyle(color: Colors.red[100], fontSize: 30),
      bodyText2: TextStyle(color: Colors.red[100], fontSize: 20),
      bodyText1: TextStyle(
          color: Colors.red[100], fontSize: 15, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(getDarkColor),
            foregroundColor:
                MaterialStateColor.resolveWith(getDarkOverlayColor),
            shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()))),
    dialogBackgroundColor: Colors.blueGrey[900]);

Color getLightColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red[400]!;
  }
  return Colors.red[100]!;
}

Color getLightOverlayColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red[100]!;
  }
  return Colors.red[400]!;
}

Color getDarkColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red[400]!;
  }
  return Colors.blueGrey[900]!;
}

Color getDarkOverlayColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.red[100]!;
  }
  return Colors.red[100]!;
}

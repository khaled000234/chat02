import 'package:chat02/final/color.dart';
import 'package:flutter/material.dart';

var lightTheme =ThemeData();
var darkTheme=ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: dBackgroundColor,
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: dBackgroundColor,
    filled: true,
    border: UnderlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    ),
  ),

  colorScheme: ColorScheme.dark(
   primary: dPrimarColor,
    onPrimary: donBackgroundColor,
    secondary: dBackgroundColor,
   background: dBackgroundColor,
   onBackground: donContainerColor,
   primaryContainer: dcontainerColor,
   onPrimaryContainer: donContainerColor,
  
            ),
            textTheme: TextTheme(
              headlineLarge: TextStyle(
                fontSize: 32,
                color: dPrimarColor,
                fontFamily: "EduNSWACTFoundation-VariableFont",
                fontWeight: FontWeight.w800,
              ),
               headlineMedium: TextStyle(
                fontSize: 30,
                color: donBackgroundColor,
                fontFamily: "EduNSWACTFoundation-VariableFont",
                fontWeight: FontWeight.w600,
              ),
                  headlineSmall: TextStyle(
                fontSize: 20,
                color: donBackgroundColor,
                fontFamily: "EduNSWACTFoundation-VariableFont",
                fontWeight: FontWeight.w800,
              ),

            )
);

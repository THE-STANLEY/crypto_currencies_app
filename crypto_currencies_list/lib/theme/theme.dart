import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 41, 41, 41),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        labelLarge: TextStyle(color: Colors.white54, fontSize: 16)),
    listTileTheme: const ListTileThemeData(iconColor: Colors.grey),
    appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 43, 43, 43),
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.grey)));

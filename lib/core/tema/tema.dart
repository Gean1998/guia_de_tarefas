import 'package:flutter/material.dart';

ThemeData temaLight() => ThemeData(
      primaryColor: Colors.purple.shade400,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.purple.shade700,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.purple.shade400,
      ),
    );

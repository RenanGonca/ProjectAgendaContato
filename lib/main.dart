import 'package:agenda_contato/screens/home/home.dart';
import 'package:agenda_contato/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: lightTheme,
  ));
}
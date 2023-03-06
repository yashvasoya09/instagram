import 'package:flutter/material.dart';
import 'package:instagram/home_screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context)=> homeScreen(),
      },
    ),
  );
}

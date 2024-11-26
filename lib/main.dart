import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';
void main() {
  runApp(
    const  MaterialApp(
      home: Scaffold(
        body: GradientContainer( Color.fromARGB(255, 88, 14, 217),
                Color.fromARGB(255, 171, 49, 228)),
      ),
    ),
  );
}


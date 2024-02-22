import 'package:flutter/material.dart';
import 'package:purecycle/purecycle.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 25, 205, 82)),
        useMaterial3: true,
      ),
      home: const PuRecycle(),
  ));
}

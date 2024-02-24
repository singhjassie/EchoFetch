import 'package:flutter/material.dart';
import 'package:echofetch/echofetch.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 55, 181, 173)),
        useMaterial3: true,
      ),
      home: const EchoFetch(),
  ));
}
